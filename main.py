from flask import Flask, request, jsonify
import mysql.connector
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Allows frontend access to API

# MySQL Database Configuration
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "1234",
    "database": "Local_Pump_Info"
}

def find_best_pump(gph=None, lph=None, psi=None, bar=None, simplex_duplex=None, want_motor=None, motor_type=None, motor_power=None, hz=None):
    # Ensure GPH or LPH is required
    if gph is None and lph is None:
        return {"error": "Either GPH or LPH is required. Please provide one."}

    # Ensure PSI or Bar is required
    if psi is None and bar is None:
        return {"error": "Either PSI or Bar is required. Please provide one."}

    # Ensure Hz is either 50 or 60
    if hz not in [50, 60]:
        return {"error": "Hz is required and must be either 50 or 60."}

    # Ensure Simplex/Duplex is required
    if not simplex_duplex:
        return {"error": "Simplex/Duplex is required. Please provide either 'Simplex' or 'Duplex'."}

    # Ensure want_motor is provided and is either "yes" or "no"
    if want_motor not in ["yes", "no"]:
        return {"error": "Want motor is required and must be either 'yes' or 'no'."}

    # If motor is required, ensure motor_type (TEFC/XPFC) and motor_power (AC/DC) are provided
    if want_motor == "yes" and (motor_type is None or motor_power is None):
        return {"error": "Motor type (TEFC/XPFC) and motor power (AC/DC) must be provided when selecting a motor."}

    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor(dictionary=True)
    query = "SELECT * FROM pumps"
    cursor.execute(query)
    pumps = cursor.fetchall()
    cursor.close()
    conn.close()

    filtered_pumps = []
    for pump in pumps:
        # Select GPH or LPH based on user input
        if hz == 60:
            pump_gph = pump["GPH_60Hz"]
            pump_lph = pump["LPH_60Hz"]
        else:
            pump_gph = pump["GPH_50Hz"]
            pump_lph = pump["LPH_50Hz"]

        if gph and (pump_gph is None or pump_gph < gph):
            continue
        if lph and (pump_lph is None or pump_lph < lph):
            continue

        # Select PSI or Bar based on user input
        if bar:
            psi = bar * 14.5  # Convert bar to PSI (needed for comparison)

        max_psi = pump["Max_Pressure_PSI"]
        max_bar = pump["Max_Pressure_Bar"]
        high_pressure_psi = pump["Max_Pressure_PSI_HP_Adder"]
        high_pressure_bar = pump["Max_Pressure_Bar_HP_Adder"]
        use_hp = psi > max_psi if psi else False

        if psi and psi > max_psi and (not high_pressure_psi or psi > high_pressure_psi):
            continue  # Skip if PSI exceeds even high-pressure max

        final_model = pump["Model"] + ("HP" if use_hp else "")

        if pump["Simplex_Duplex"].lower() != simplex_duplex.lower():
            continue

        total_price = pump["Pump_Price"] if pump["Pump_Price"] is not None else 0

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

            motor_price = pump[motor_price_column] if pump[motor_price_column] is not None else 0
            total_price += motor_price

            if motor_price == 0:
                return {"error": f"Motor price for {motor_power.upper()} {motor_type.upper()} is zero in column {motor_price_column}."}

        if use_hp and pump["HP_Adder_Price"] is not None and pump["HP_Adder_Price"] > 0:
            total_price += pump["HP_Adder_Price"]

        filtered_pumps.append({
            "model": final_model,
            "series": pump["Series"],
            "simplex_duplex": pump["Simplex_Duplex"],
            "gph": pump_gph,
            "lph": pump_lph,
            "psi": max_psi,
            "bar": max_bar,
            "high_pressure_psi": high_pressure_psi,
            "high_pressure_bar": high_pressure_bar,
            "price": total_price
        })

    if filtered_pumps:
        return min(filtered_pumps, key=lambda x: x["price"])
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

        result = find_best_pump(gph, lph, psi, bar, simplex_duplex, want_motor, motor_type, motor_power, hz)
        return jsonify(result)

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)
