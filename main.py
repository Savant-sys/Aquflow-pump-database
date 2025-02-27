from flask import Flask, request, jsonify
import mysql.connector
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Allows frontend access to API

# MySQL Database Configuration (Replace with actual credentials)
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "1234",
    "database": "Local_Pump_Info"
}

def find_best_pump(gph=None, lph=None, psi=None, bar=None, simplex_duplex="Simplex", want_motor=False, motor_type=None, hp=60):
    # Ensure GPH is required
    if gph is None and lph is None:
        return {"error": "GPH is required. Please provide at least one."}

    # Convert LPH to GPH if provided
    if lph:
        gph = lph / 3.785  # Convert LPH to GPH

    # Convert Bar to PSI if provided
    if bar:
        psi = bar * 14.5  # Convert bar to PSI

    # Default Simplex/Duplex to "Simplex" if not provided
    if not simplex_duplex:
        simplex_duplex = "Simplex"

    # Connect to MySQL database
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor(dictionary=True)

    # Fetch pump data
    query = "SELECT * FROM pumps"
    cursor.execute(query)
    pumps = cursor.fetchall()
    cursor.close()
    conn.close()

    # Filter and rank pumps
    filtered_pumps = []
    for pump in pumps:
        # Check GPH constraints
        if gph:
            if hp == 60 and (pump["gph_60hz"] is not None and pump["gph_60hz"] < gph):
                continue
            if hp == 50 and (pump["gph_50hz"] is not None and pump["gph_50hz"] < gph):
                continue

        # Check PSI constraints
        if psi:
            max_psi = pump["max_pressure_psi"]
            high_pressure_psi = pump["max_pressure_psi_hp"]
            use_hp = psi > max_psi

            # If PSI is within max pressure, use normal model
            if not use_hp:
                final_model = pump["Model"]
            # If PSI is higher, use high-pressure model (if available)
            elif high_pressure_psi and psi <= high_pressure_psi:
                final_model = pump["Model"] + "HP"
            # If PSI exceeds even high-pressure max, skip this pump
            else:
                continue
        else:
            final_model = pump["Model"]

        # Apply Simplex/Duplex constraint
        if pump["Simplex_Duplex"].lower() != simplex_duplex.lower():
            continue

        # Calculate total price
        total_price = pump["pump_price"] if pump["pump_price"] is not None else 0

        # Add motor price if selected
        if want_motor and motor_type:
            if motor_type.lower() == "tefc":
                total_price += pump["tefc_price"] if pump["tefc_price"] is not None else 0
            elif motor_type.lower() == "xpfc":
                total_price += pump["xpfc_price"] if pump["xpfc_price"] is not None else 0

        # Add High-Pressure Adder Price only if greater than 0
        if use_hp and pump["hp_adder_price"] is not None and pump["hp_adder_price"] > 0:
            total_price += pump["hp_adder_price"]

        # Store pump details
        filtered_pumps.append({
            "model": final_model,
            "series": pump["Series"],
            "simplex_duplex": pump["Simplex_Duplex"],
            "gph_60hz": pump["gph_60hz"],
            "gph_50hz": pump["gph_50hz"],
            "psi": max_psi,
            "high_pressure_psi": high_pressure_psi,
            "price": total_price
        })

    # Select the cheapest valid pump model
    if filtered_pumps:
        best_pump = min(filtered_pumps, key=lambda x: x["price"])
        return best_pump
    else:
        return {"error": "No suitable pump found for the given specifications."}

@app.route('/get_pump', methods=['GET'])
def get_pump():
    try:
        # Get user input from request
        gph = request.args.get('gph', type=float)
        lph = request.args.get('lph', type=float)
        psi = request.args.get('psi', type=float)
        bar = request.args.get('bar', type=float)
        simplex_duplex = request.args.get('simplex_duplex', default="Simplex", type=str)
        want_motor = request.args.get('want_motor', type=lambda x: x.lower() == "true")
        motor_type = request.args.get('motor_type', type=str)
        hp = request.args.get('hp', default=60, type=int)

        # Find best pump
        result = find_best_pump(gph, lph, psi, bar, simplex_duplex, want_motor, motor_type, hp)
        return jsonify(result)

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)
