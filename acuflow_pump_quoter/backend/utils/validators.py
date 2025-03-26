from utils.constants import *

class PumpValidator:
    @staticmethod
    def validate_pump_parameters(params):
        # Check required flow rate
        if params.get('gph') is None and params.get('lph') is None:
            return {"error": "Either GPH or LPH is required. Please provide one."}
            
        # Check required pressure
        if params.get('psi') is None and params.get('bar') is None:
            return {"error": "Either PSI or Bar is required. Please provide one."}
            
        # Check Hz
        if params.get('hz') not in [50, 60]:
            return {"error": "Hz is required and must be either 50 or 60."}
            
        # Check simplex/duplex
        if not params.get('simplex_duplex') or params.get('simplex_duplex').lower() not in ["simplex", "duplex", "both"]:
            return {"error": "Simplex/Duplex is required. Please provide either 'Simplex', 'Duplex', or 'Both'."}
            
        # Check want_motor
        if params.get('want_motor') is None or params.get('want_motor').lower() not in ["yes", "no"]:
            return {"error": "Want motor is required and must be either 'yes' or 'no'."}
            
        # Check motor details if motor is wanted
        if params.get('want_motor', "").lower() == "yes":
            if not params.get('motor_type') or params.get('motor_type').upper() not in ["TEFC", "XPFC"]:
                return {"error": "Motor type (TEFC/XPFC) must be provided when selecting a motor."}
                
            if not params.get('motor_power') or params.get('motor_power').upper() not in ["AC", "DC"]:
                return {"error": "Motor power (AC/DC) must be provided when selecting a motor."}
                
        # Check SPM
        if not params.get('spm') or int(params.get('spm')) not in valid_spm_options:
            return {"error": f"SPM is required and must be one of the following: {', '.join(map(str, valid_spm_options))}."}
            
        # Check diaphragm
        if not params.get('diaphragm') or params.get('diaphragm').lower() not in valid_diaphragm_options:
            return {"error": f"Diaphragm is required and must be one of the following: {', '.join(valid_diaphragm_options)}."}
            
        # Check liquid end material
        if not params.get('liquid_end_material') or params.get('liquid_end_material') not in valid_liquid_end_material:
            return {"error": f"Liquid End Material is required and must be one of the following: {', '.join(valid_liquid_end_material)}."}
            
        # Check leak detection
        if not params.get('leak_detection') or params.get('leak_detection').lower() not in valid_leak_detection_options:
            return {"error": f"Leak Detection is required and must be one of the following: {', '.join(valid_leak_detection_options)}."}
            
        # Check phase
        if not params.get('phase') or params.get('phase') not in valid_phase_options:
            return {"error": f"Phase is required and must be one of the following: {', '.join(valid_phase_options)}."}
            
        # Check degassing
        if not params.get('degassing') or params.get('degassing').lower() not in ["yes", "no"]:
            return {"error": "Degassing is required and must be either 'yes' or 'no'."}
            
        # Check flange
        if not params.get('flange') or params.get('flange').lower() not in ["yes", "no"]:
            return {"error": "Flange is required and must be either 'yes' or 'no'."}
            
        # Check flange sizes if flange is yes
        if params.get('flange', "").lower() == "yes":
            if not params.get('suction_flange_size') or not params.get('discharge_flange_size'):
                return {"error": "Suction and Discharge flange sizes are required when selecting flanges."}
                
        # Check balls type
        if not params.get('balls_type') or params.get('balls_type') not in valid_balls_type_options:
            return {"error": f"Balls Type is required and must be one of the following: {', '.join(valid_balls_type_options)}."}
            
        # Check suction lift
        if not params.get('suction_lift') or params.get('suction_lift').lower() not in ["yes", "no"]:
            return {"error": "Suction Lift is required and must be either 'yes' or 'no'."}
            
        # Check ball size
        ball_size = params.get('ball_size')
        if not ball_size:
            return {"error": "Ball Size is required."}
            
        # Normalize ball size
        ball_size = ball_size.replace("%26quot%3B", "\"").replace("&quot;", "\"").strip()
        
        # Validate based on balls type
        if params.get('balls_type') in ["Tungsten", "Ceramic"]:
            if ball_size not in valid_ball_size_options_special:
                return {"error": f"For {params.get('balls_type')} balls, size must be one of: {', '.join(valid_ball_size_options_special)}"}
        else:
            if ball_size not in valid_ball_size_options_std:
                return {"error": f"For standard balls, size must be one of: {', '.join(valid_ball_size_options_std)}"}
                
        # Check food graded oil
        if not params.get('food_graded_oil') or params.get('food_graded_oil').lower() not in ["yes", "no"]:
            return {"error": "Food Graded Oil is required and must be either 'yes' or 'no'."}
            
        return {"success": True}