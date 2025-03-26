from flask import Flask, request, jsonify, send_file
from flask_cors import CORS
from services.pump_finder import PumpFinder
from services.pdf_generator import PDFGenerator
from services.email_service import EmailService
import os
from config import Config

app = Flask(__name__)
CORS(app)

@app.route('/get_pump', methods=['GET'])
def get_pump():
    try:
        # Get all parameters from request
        params = {
            'customer_name': request.args.get('customer_name', type=str),
            'gph': request.args.get('gph', type=float),
            'psi': request.args.get('psi', type=float),
            'hz': request.args.get('hz', type=int),
            'simplex_duplex': request.args.get('simplex_duplex', type=str),
            'want_motor': request.args.get('want_motor', type=str),
            'motor_type': request.args.get('motor_type', type=str),
            'motor_power': request.args.get('motor_power', type=str),
            'spm': request.args.get('spm', type=int),
            'diaphragm': request.args.get('diaphragm', type=str),
            'liquid_end_material': request.args.get('liquid_end_material', type=str),
            'leak_detection': request.args.get('leak_detection', type=str),
            'phase': request.args.get('phase', type=str),
            'degassing': request.args.get('degassing', type=str),
            'flange': request.args.get('flange', type=str),
            'balls_type': request.args.get('balls_type', type=str),
            'suction_lift': request.args.get('suction_lift', type=str),
            'ball_size': request.args.get('ball_size', type=str),
            'food_graded_oil': request.args.get('food_graded_oil', type=str),
            'user_email': request.args.get('user_email', type=str),
            'spare_parts_kit': request.args.get('spare_parts_kit', type=str),
            'back_pressure_valve': request.args.get('back_pressure_valve', type=str),
            'pressure_relief_valve': request.args.get('pressure_relief_valve', type=str),
            'pulsation_dampener': request.args.get('pulsation_dampener', type=str),
            'calibration_column': request.args.get('calibration_column', type=str),
            'pressure_gauge': request.args.get('pressure_gauge', type=str),
        }

        # Add flange sizes if applicable
        if params['flange'] == "Yes":
            params['suction_flange_size'] = request.args.get('suction_flange_size', type=str)
            params['discharge_flange_size'] = request.args.get('discharge_flange_size', type=str)

        # Find the best pump
        result = PumpFinder.find_best_pump(**params)
        
        if "error" not in result:
            # Generate PDF
            pdf_filename = PDFGenerator.generate_pdf(result)
            result["pdf_url"] = f"/download_pdf/{os.path.basename(pdf_filename)}"
            
            # Send email if user_email provided
            if params.get('user_email'):
                email_subject = "Your Pump Quote"
                email_body = "Please find attached the pump quote."
                to_emails = [params['user_email'], "quotes@acuflow.com"]
                if EmailService.send_email(to_emails, email_subject, email_body, pdf_filename):
                    result["email_status"] = "Email sent successfully"
                else:
                    result["email_status"] = "Failed to send email"

        return jsonify(result)
    
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route('/download_pdf/<filename>', methods=['GET'])
def download_pdf(filename):
    try:
        filepath = os.path.join(Config.PDF_OUTPUT_DIR, filename)
        return send_file(filepath, as_attachment=True)
    except FileNotFoundError:
        return jsonify({"error": "PDF not found"}), 404

if __name__ == '__main__':
    Config.ensure_directories_exist()
    app.run(host="0.0.0.0", port=5000, debug=True)