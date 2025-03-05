from flask import Flask, request, jsonify, send_file
import mysql.connector
from flask_cors import CORS
import math
from fpdf import FPDF

app = Flask(__name__)
CORS(app)  # Allows frontend access to API

# MySQL Database Configuration

# db_config = {
#     "host": "your_godaddy_mysql_host",
#     "user": "your_godaddy_mysql_user",
#     "password": "your_godaddy_mysql_password",
#     "database": "your_godaddy_mysql_database"
# }

db_config = {
    "host": "localhost",
    "user": "root",
    "password": "1234",
    "database": "Local_Pump_Info"
}

def find_best_pump(gph=None, lph=None, psi=None, bar=None, hz=None, simplex_duplex=None, want_motor=None, motor_type=None, motor_power=None, spm=None, diaphragm=None, liquid_end_material=None, leak_detection=None):
    # Ensure either GPH or LPH is provided
    if gph is None and lph is None:
        return {"error": "Either GPH or LPH is required. Please provide one."}

    # Ensure either PSI or Bar is provided
    if psi is None and bar is None:
        return {"error": "Either PSI or Bar is required. Please provide one."}

    # Ensure Hz is required and valid
    if hz not in [50, 60]:
        return {"error": "Hz is required and must be either 50 or 60."}

    # Ensure Simplex/Duplex is required
    if not simplex_duplex:
        return {"error": "Simplex/Duplex is required. Please provide either 'Simplex', 'Duplex', or 'Both' (one of them)."}

    # Ensure want_motor is provided and is either "yes" or "no"
    if want_motor.lower() not in ["yes", "no"]:
        return {"error": "Want motor is required and must be either 'yes' or 'no'."}

    # If motor is required, ensure motor_type (TEFC/XPFC) and motor_power (AC/DC) are provided
    if want_motor == "yes" and (motor_type is None or motor_power is None):
        return {"error": "Motor type (TEFC/XPFC) and motor power (AC/DC) must be provided when selecting a motor."}

    # Ensure SPM is provided and is one of the valid options
    valid_spm_options = [29, 44, 58, 88, 97, 117, 140, 170, 191]
    if spm is None or spm not in valid_spm_options:
        return {"error": "SPM is required and must be one of the following: 29, 44, 58, 88, 97, 117, 140, 170, 191."}

    # Ensure diaphragm is provided and is one of the valid options
    valid_diaphragm_options = ["ptfe", "viton", "hypalon", "epdm"]
    if diaphragm is None or diaphragm.lower() not in valid_diaphragm_options:
        return {"error": "Diaphragm is required and must be one of the following: PTFE, Viton, Hypalon, EPDM."}

    # Ensure liquid end material is provided and is one of the valid options
    valid_liquid_end_material = ["316ss", "alloy 20", "hast c.", "pvc", "pvdf"]
    if liquid_end_material is None or liquid_end_material.lower() not in valid_liquid_end_material:
        return {"error": "Liquid End Material is required and must be one of the following: 316SS, Alloy 20, Hast C., PVC, PVDF."}

    # Ensure leak detection is provided and is one of the valid options
    valid_leak_detection_options = ["no", "conductive", "vacuum"]
    if leak_detection is None or leak_detection.lower() not in valid_leak_detection_options:
        return {"error": "Leak Detection is required and must be one of the following: No, Conductive, Vacuum."}

    # Connect to MySQL database
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor(dictionary=True)
    query = "SELECT * FROM pumps"
    cursor.execute(query)
    pumps = cursor.fetchall()
    cursor.close()
    conn.close()

    filtered_pumps = []
    for pump in pumps:
        # Ensure Liquid End Material matches (case-insensitive)
        if pump["Liquid_End_Material"].lower() != liquid_end_material.lower():
            continue

        # Select the correct column for GPH/LPH based on Hz
        if gph is not None:
            pump_flow = float(pump["GPH_60Hz"]) if hz == 60 else float(pump["GPH_50Hz"])
            input_flow = gph
        else:
            pump_flow = float(pump["LPH_60Hz"]) if hz == 60 else float(pump["LPH_50Hz"])
            input_flow = lph

        # Ensure input flow is always ≤ database values
        if pump_flow is None or input_flow > pump_flow:
            continue

        # Convert Bar to PSI if Bar is provided
        if bar is not None:
            psi = float(bar) * 14.5038  # 1 Bar = 14.5038 PSI

        # Select the correct column for PSI/Bar
        if psi is not None:
            max_pressure = float(pump["Max_Pressure_PSI"])
            high_pressure = float(pump["Max_Pressure_PSI_HP_Adder"])
        else:
            max_pressure = float(pump["Max_Pressure_Bar"])
            high_pressure = float(pump["Max_Pressure_Bar_HP_Adder"])

        use_hp = psi > max_pressure if psi is not None else bar > max_pressure
        if (psi is not None and psi > max_pressure and (not high_pressure or psi > high_pressure)) or \
           (bar is not None and bar > max_pressure and (not high_pressure or bar > high_pressure)):
            continue  # Skip if pressure exceeds even high-pressure max

        # Ensure pump's Max_SPM is <= user-input SPM
        max_spm = float(pump["Max_SPM"]) if pump["Max_SPM"] is not None else 0
        if max_spm > spm:
            continue  # Skip if pump's Max_SPM exceeds user-input SPM

        final_model = pump["Model"] + ("HP" if use_hp else "")

        # Ensure Simplex/Duplex matches or allow "both"
        if simplex_duplex.lower() != "both" and pump["Simplex_Duplex"].lower() != simplex_duplex.lower():
            continue

        # Start total price calculation
        pump_price = float(pump["Pump_Price"]) if pump["Pump_Price"] is not None else 0
        motor_price = 0
        diaphragm_price = 0
        leak_detection_price = 0

        # Determine correct motor price column
        if want_motor == "yes":
            motor_type = motor_type.lower()
            motor_power = motor_power.lower()

            if motor_type == "tefc" and motor_power == "ac":
                motor_price_column = "TEFC_AC_Price"
            elif motor_type == "xpfc" and motor_power == "ac":
                motor_price_column = "XPFC_AC_Price"
            elif motor_type == "tefc" and motor_power == "dc":
                motor_price_column = "TEFC_DC_Price"
            elif motor_type == "xpfc" and motor_power == "dc":
                motor_price_column = "XPFC_DC_Price"
            else:
                return {"error": "Invalid motor type or power. Choose TEFC/XPFC and AC/DC correctly."}

            motor_price_value = pump[motor_price_column]

            # Skip this pump if motor price is 0 for DC motor
            if motor_power == "dc" and motor_price_value == "0":
                continue

            # Handle "C/F" values
            if motor_price_value == "C/F":
                motor_price = "C/F"
            else:
                motor_price = float(motor_price_value) if motor_price_value is not None else 0

        # Determine diaphragm price
        if diaphragm.lower() == "viton":
            diaphragm_price = float(pump["Viton"]) if pump["Viton"] is not None else 0
        elif diaphragm.lower() == "hypalon":
            diaphragm_price = float(pump["Hypalon"]) if pump["Hypalon"] is not None else 0
        elif diaphragm.lower() == "epdm":
            diaphragm_price = float(pump["EPDM"]) if pump["EPDM"] is not None else 0
        elif diaphragm.lower() == "ptfe":
            diaphragm_price = 1

        if diaphragm_price == 0:
            continue
        else:
            diaphragm_price = 0

        # Determine leak detection price
        if leak_detection.lower() == "conductive":
            leak_detection_price = float(pump["Conductive_Leak_Detection_Price_Adder"]) if pump["Conductive_Leak_Detection_Price_Adder"] is not None else 0
        elif leak_detection.lower() == "vacuum":
            leak_detection_price = float(pump["Vacuum_Leak_Detection_Price_Adder"]) if pump["Vacuum_Leak_Detection_Price_Adder"] is not None else 0
        else:
            leak_detection_price = 0

        # Calculate total price
        total_price = pump_price  # Always include the pump price

        # Add motor price if it's not "C/F"
        if motor_price != "C/F":
            total_price += motor_price

        # Add diaphragm price if not "ptfe"
        if diaphragm != "ptfe":
            total_price += diaphragm_price

        # Add leak detection price
        total_price += leak_detection_price

        # Add HP adder price if it's not "C/F"
        if use_hp and pump["HP_Adder_Price"] is not None and pump["HP_Adder_Price"] != "C/F":
            total_price += float(pump["HP_Adder_Price"])

        # Round up the total price to the nearest whole number
        total_price_rounded = math.ceil(total_price)

        # Add annotations for "C/F" cases
        annotations = []
        if motor_price == "C/F":
            annotations.append("C/F (Motor)")
        if use_hp and pump["HP_Adder_Price"] == "C/F":
            annotations.append("C/F (HP)")

        if annotations:
            total_price_rounded = f"{total_price_rounded} + {' + '.join(annotations)}"

        filtered_pumps.append({
            "model": final_model,
            "series": pump["Series"],
            "simplex_duplex": pump["Simplex_Duplex"],
            "gph": float(pump["GPH_60Hz"]) if hz == 60 else float(pump["GPH_50Hz"]),
            "lph": float(pump["LPH_60Hz"]) if hz == 60 else float(pump["LPH_50Hz"]),
            "psi": float(pump["Max_Pressure_PSI"]),
            "bar": float(pump["Max_Pressure_Bar"]),
            "high_pressure_psi": float(pump["Max_Pressure_PSI_HP_Adder"]),
            "high_pressure_bar": float(pump["Max_Pressure_Bar_HP_Adder"]),
            "max_spm": float(pump["Max_SPM"]),
            "liquid_end_material": pump["Liquid_End_Material"],
            "pump_price": pump_price,
            "motor_price": motor_price,
            "diaphragm_price": diaphragm_price,
            "leak_detection_price": leak_detection_price,
            "total_price": total_price_rounded
        })

        if filtered_pumps:
            # Sort pumps by total_price, treating "C/F" as infinity
            filtered_pumps.sort(key=lambda x: float('inf') if isinstance(x["total_price"], str) else x["total_price"])
            best_pump = filtered_pumps[0]
            return best_pump
        else:
            return {"error": "No suitable pump found for the given specifications."}

def generate_pdf(pump_data, filename="pump_quote.pdf"):
    # Create a PDF object
    pdf = FPDF()
    pdf.add_page()

    # Set font for the entire document
    pdf.set_font("Arial", size=12)

    # Add a header with a logo
    pdf.image("logo.png", x=10, y=8, w=30)
    pdf.set_font("Arial", "B", 16)
    pdf.cell(0, 10, txt="Pump Quote", ln=True, align="C")
    pdf.ln(10)  # Add some space

    # Add customer details section
    pdf.set_font("Arial", "B", 12)
    pdf.cell(0, 10, txt="Customer Details", ln=True)
    pdf.set_font("Arial", size=12)
    pdf.cell(0, 10, txt="Name: Test Name", ln=True)
    pdf.cell(0, 10, txt="Email: test.name@example.com", ln=True)
    pdf.cell(0, 10, txt="Phone: +1 234 567 890", ln=True)
    pdf.ln(10)  # Add some space

    # Add pump details section
    pdf.set_font("Arial", "B", 12)
    pdf.cell(0, 10, txt="Pump Details", ln=True)
    pdf.set_font("Arial", size=12)

    # Create a table for pump details
    pdf.cell(60, 10, txt="Model", border=1)
    pdf.cell(60, 10, txt="Series", border=1)
    pdf.cell(60, 10, txt="Simplex/Duplex", border=1, ln=True)

    pdf.cell(60, 10, txt=pump_data["model"], border=1)
    pdf.cell(60, 10, txt=pump_data["series"], border=1)
    pdf.cell(60, 10, txt=pump_data["simplex_duplex"], border=1, ln=True)

    pdf.ln(10)  # Add some space

    # Add pricing details
    pdf.set_font("Arial", "B", 12)
    pdf.cell(0, 10, txt="Pricing Details", ln=True)
    pdf.set_font("Arial", size=12)

    pdf.cell(100, 10, txt="Pump Price", border=1)
    pdf.cell(80, 10, txt=f"${pump_data['pump_price']}", border=1, ln=True)

    pdf.cell(100, 10, txt="Motor Price", border=1)
    pdf.cell(80, 10, txt=f"${pump_data['motor_price']}", border=1, ln=True)

    pdf.cell(100, 10, txt="Diaphragm Price", border=1)
    pdf.cell(80, 10, txt=f"${pump_data['diaphragm_price']}", border=1, ln=True)

    pdf.cell(100, 10, txt="Leak Detection Price", border=1)
    pdf.cell(80, 10, txt=f"${pump_data['leak_detection_price']}", border=1, ln=True)

    pdf.cell(100, 10, txt="Total Price", border=1)
    pdf.cell(80, 10, txt=f"${pump_data['total_price']}", border=1, ln=True)

    pdf.ln(10)  # Add some space

    # Add a footer
    pdf.set_font("Arial", "I", 10)
    pdf.cell(0, 10, txt="Thank you for choosing us!", ln=True, align="C")
    pdf.cell(0, 10, txt="Terms and conditions apply.", ln=True, align="C")

    # Save the PDF
    pdf.output(filename)
    return filename

@app.route('/get_pump', methods=['GET'])
def get_pump():
    try:
        # Get parameters from the request
        gph = request.args.get('gph', type=float)
        psi = request.args.get('psi', type=float)
        hz = request.args.get('hz', type=int)
        simplex_duplex = request.args.get('simplex_duplex', type=str)
        want_motor = request.args.get('want_motor', type=str)
        motor_type = request.args.get('motor_type', type=str)
        motor_power = request.args.get('motor_power', type=str)
        spm = request.args.get('spm', type=int)
        diaphragm = request.args.get('diaphragm', type=str)
        liquid_end_material = request.args.get('liquid_end_material', type=str)
        leak_detection = request.args.get('leak_detection', type=str)

        # Find the best pump
        result = find_best_pump(gph, None, psi, None, hz, simplex_duplex, want_motor, motor_type, motor_power, spm, diaphragm, liquid_end_material, leak_detection)

        # Generate PDF
        if "error" not in result:
            pdf_filename = generate_pdf(result)
            result["pdf_url"] = f"/download_pdf/{pdf_filename}"

        return jsonify(result)

    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/download_pdf/<filename>', methods=['GET'])
def download_pdf(filename):
    try:
        return send_file(filename, as_attachment=True)
    except FileNotFoundError:
        return jsonify({"error": "PDF not found"}), 404

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)