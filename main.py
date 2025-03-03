from flask import Flask, request, jsonify
import mysql.connector
from flask_cors import CORS
from decimal import Decimal

app = Flask(__name__)
CORS(app)  # Allows frontend access to API

# MySQL Database Configuration
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "1234",
    "database": "Local_Pump_Info"
}

def find_best_pump(gph=None, lph=None, psi=None, bar=None, hz=None, simplex_duplex=None, want_motor=None, motor_type=None, motor_power=None, spm=None):
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
    if want_motor not in ["yes", "no"]:
        return {"error": "Want motor is required and must be either 'yes' or 'no'."}

    # If motor is required, ensure motor_type (TEFC/XPFC) and motor_power (AC/DC) are provided
    if want_motor == "yes" and (motor_type is None or motor_power is None):
        return {"error": "Motor type (TEFC/XPFC) and motor power (AC/DC) must be provided when selecting a motor."}

    # Ensure SPM is provided and is one of the valid options
    valid_spm_options = [29, 44, 58, 88, 97, 117, 140, 170, 190]
    if spm is None or spm not in valid_spm_options:
        return {"error": "SPM is required and must be one of the following: 29, 44, 58, 88, 97, 117, 140, 170, 190."}

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
        # Debug: Print pump model and Max_SPM
        print(f"Checking pump: {pump['Model']}, Max_SPM: {pump['Max_SPM']}")

        # Select the correct column for GPH/LPH based on Hz
        if gph is not None:
            pump_flow = float(pump["GPH_60Hz"]) if hz == 60 else float(pump["GPH_50Hz"])
            input_flow = gph
        else:
            pump_flow = float(pump["LPH_60Hz"]) if hz == 60 else float(pump["LPH_50Hz"])
            input_flow = lph

        # Ensure input flow is always ≤ database values
        if pump_flow is None or input_flow > pump_flow:
            print(f"Skipping pump {pump['Model']} due to flow rate mismatch")
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
            print(f"Skipping pump {pump['Model']} due to pressure mismatch")
            continue  # Skip if pressure exceeds even high-pressure max

        # Ensure pump's Max_SPM is ≤ user-input SPM
        max_spm = float(pump["Max_SPM"]) if pump["Max_SPM"] is not None else 0
        if max_spm > spm:
            print(f"Skipping pump {pump['Model']} due to SPM mismatch (pump Max_SPM: {max_spm}, user-input SPM: {spm})")
            continue  # Skip if pump's Max_SPM exceeds user-input SPM

        final_model = pump["Model"] + ("HP" if use_hp else "")

        # Ensure Simplex/Duplex matches or allow "both"
        if simplex_duplex.lower() != "both" and pump["Simplex_Duplex"].lower() != simplex_duplex.lower():
            print(f"Skipping pump {pump['Model']} due to Simplex/Duplex mismatch")
            continue

        # Start total price calculation
        total_price = float(pump["Pump_Price"]) if pump["Pump_Price"] is not None else 0

        # Determine correct motor price column
        motor_price_column = None
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

            motor_price = float(pump[motor_price_column]) if pump[motor_price_column] is not None else 0

            # Skip this pump if motor price is 0 for DC motor
            if motor_power == "dc" and motor_price == 0:
                print(f"Skipping pump {pump['Model']} due to DC motor price being 0")
                continue

            total_price += motor_price

        if use_hp and pump["HP_Adder_Price"] is not None and pump["HP_Adder_Price"] > 0:
            total_price += float(pump["HP_Adder_Price"])

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
            "price": total_price
        })

    if filtered_pumps:
        # ✅ Always return the first cheapest pump that meets all conditions
        # Sort by price and then select the first one
        filtered_pumps.sort(key=lambda x: x["price"])
        best_pump = filtered_pumps[0]
        return {
            "model": best_pump["model"],
            "series": best_pump["series"],
            "simplex_duplex": best_pump["simplex_duplex"],
            "gph": best_pump["gph"],
            "lph": best_pump["lph"],
            "psi": best_pump["psi"],
            "bar": best_pump["bar"],
            "high_pressure_psi": best_pump["high_pressure_psi"],
            "high_pressure_bar": best_pump["high_pressure_bar"],
            "max_spm": best_pump["max_spm"],
            "total_price": best_pump["price"]
        }
    else:
        return {"error": "No suitable pump found for the given specifications."}

@app.route('/get_pump', methods=['GET'])
def get_pump():
    try:
        gph = request.args.get('gph', type=float)
        lph = request.args.get('lph', type=float)
        psi = request.args.get('psi', type=float)
        bar = request.args.get('bar', type=float)
        hz = request.args.get('hz', type=int)
        simplex_duplex = request.args.get('simplex_duplex', type=str)
        want_motor = request.args.get('want_motor', type=str)  # "yes" or "no"
        motor_type = request.args.get('motor_type', type=str)  # TEFC or XPFC
        motor_power = request.args.get('motor_power', type=str)  # AC or DC
        spm = request.args.get('spm', type=int)  # SPM input

        result = find_best_pump(gph, lph, psi, bar, hz, simplex_duplex, want_motor, motor_type, motor_power, spm)
        return jsonify(result)

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)