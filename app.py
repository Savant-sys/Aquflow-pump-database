from flask import Flask, request, jsonify
import mysql.connector
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Allow requests from your website

# MySQL Database Configuration
db_config = {
    "host": "localhost",  # Change if your database is hosted elsewhere
    "user": "root",  # Change if using a different MySQL user
    "password": "1234",  # Your MySQL password
    "database": "Local_Pump_Info"  # Your database name
}

def find_best_pump(gph, psi, simplex_duplex="Simplex", want_motor=False, motor_type=None, hp=60):
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)

        # Convert user input to numeric types
        gph = float(gph) if gph else None
        psi = float(psi) if psi else None

        # Query to find all pumps that meet the minimum requirements
        query = """
        SELECT *, 
               (pump_price + 
                IF(%s = 1 AND %s = 'TEFC', tefc_price, 0) + 
                IF(%s = 1 AND %s = 'XPFC', xpfc_price, 0) + 
                IF(%s > max_pressure_psi, hp_adder_price, 0)) AS total_price
        FROM pumps
        WHERE gph_60hz >= %s
          AND max_pressure_psi >= %s
          AND Simplex_Duplex = %s
        ORDER BY total_price ASC
        LIMIT 1;
        """
        
        cursor.execute(query, (want_motor, motor_type, want_motor, motor_type, psi, gph, psi, simplex_duplex))
        best_pump = cursor.fetchone()

        cursor.close()
        conn.close()

        if best_pump:
            return {
                "model": best_pump["Model"],
                "series": best_pump["Series"],
                "simplex_duplex": best_pump["Simplex_Duplex"],
                "gph_60hz": best_pump["gph_60hz"],
                "psi": best_pump["max_pressure_psi"],
                "price": best_pump["total_price"]
            }
        else:
            return {"error": "No suitable pump found for the given specifications."}

    except mysql.connector.Error as err:
        return {"error": str(err)}

@app.route('/get_pump', methods=['GET'])
def get_pump():
    try:
        gph = request.args.get('gph')
        psi = request.args.get('psi')
        simplex_duplex = request.args.get('simplex_duplex', default="Simplex")
        want_motor = request.args.get('want_motor', type=lambda x: x.lower() == "true", default=False)
        motor_type = request.args.get('motor_type', type=str)
        hp = request.args.get('hp', type=int, default=60)

        # Ensure required fields are provided
        if not gph or not psi:
            return jsonify({"error": "GPH and PSI are required fields."}), 400

        # Find the best pump based on the given parameters
        result = find_best_pump(gph, psi, simplex_duplex, want_motor, motor_type, hp)
        return jsonify(result)

    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)
