from flask import Flask, request, jsonify, send_file
import mysql.connector
from flask_cors import CORS
import math
from reportlab.lib.pagesizes import letter
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle, Image
from datetime import datetime
import os

app = Flask(__name__)
CORS(app)  # Allows frontend access to API

import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.base import MIMEBase
from email.mime.text import MIMEText
from email import encoders

# Email configuration
SMTP_SERVER = 'smtp.bizmail.yahoo.com'
SMTP_PORT = 465
EMAIL_ADDRESS = 'quotes@acuflow.com'
EMAIL_PASSWORD = 'xfvdcfnkfriprpol'

def send_email(to_emails, subject, body, filename):
    msg = MIMEMultipart()
    msg['From'] = EMAIL_ADDRESS
    msg['To'] = ', '.join(to_emails)
    msg['Subject'] = subject

    msg.attach(MIMEText(body, 'plain'))

    # Attach the PDF file
    with open(filename, 'rb') as attachment:
        part = MIMEBase('application', 'octet-stream')
        part.set_payload(attachment.read())
        encoders.encode_base64(part)
        part.add_header('Content-Disposition', f'attachment; filename={filename}')
        msg.attach(part)

    # Send the email using Yahoo Business SMTP server
    try:
        print(f"Connecting to SMTP server: {SMTP_SERVER}:{SMTP_PORT}...")
        server = smtplib.SMTP_SSL(SMTP_SERVER, SMTP_PORT)  # Use SMTP_SSL for SSL
        print("Logging in...")
        server.login(EMAIL_ADDRESS, EMAIL_PASSWORD)
        print("Sending email...")
        server.sendmail(EMAIL_ADDRESS, to_emails, msg.as_string())
        print("Email sent successfully!")
        server.quit()
        return True
    except Exception as e:
        print(f"Error sending email: {e}")
        return False

# MySQL Database Configuration
db_config = {
    "host": "localhost",
    "user": "root",
    "password": "1234",
    "database": "Local_Pump_Info"
}

def get_flange_size_id(psi):
    if psi < 290:
        return 150
    elif 290 <= psi < 750:
        return 300
    elif 750 <= psi < 1000:
        return 400
    elif 1000 <= psi < 1500:
        return 600
    elif 1500 <= psi <= 2250:
        return 900
    else:
        return None  # Handle cases where PSI is out of range

ball_size_mapping = {
    "1/8\"": "1",
    "3/16\"": "2",
    "1/4\"": "3",
    "3/8\"": "4",
    "1/2\"": "5",
    "5/8\"": "6",
    "3/4\"": "7",
    "7/8\"": "8",
    "1\"": "9",
    "1-1/4\"": "A",
    "1-1/2\"": "B",
    "1-3/4\"": "C",
    "2\"": "D",
    "2-1/4\"": "E",
    "2-1/2\"": "F",
    "3\"": "G",
    "3-1/2\"": "H",
    "1/2\" Double Ball": "V",
    "7/8\" Double Ball": "W",
    "1/2\" Suction and 3/8\" Discharge": "X",
    "3/8\" Double Ball": "Z"
}

# Flange Pricing Tables
flange_pricing_tables = {
    150: {
        "1/2\"": {"316SS": 24.75, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 7.56, "PVDF": "C/F"},
        "3/4\"": {"316SS": 26.75, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 8.86, "PVDF": "C/F"},
        "1\"": {"316SS": 29.5, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 9.7, "PVDF": "C/F"},
        "1-1/4\"": {"316SS": 40.55, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 12.16, "PVDF": "C/F"},
        "1-1/2\"": {"316SS": 42.8, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 13.27, "PVDF": "C/F"},
        "2\"": {"316SS": 53.25, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 13.57, "PVDF": "C/F"},
        "2-1/2\"": {"316SS": 83.65, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 26.41, "PVDF": "C/F"},
        "3\"": {"316SS": 69.7, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 27.18, "PVDF": "C/F"},
        "4\"": {"316SS": 114, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 51.07, "PVDF": "C/F"}
    },
    300: {
        "1/2\"": {"316SS": 33.15, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "3/4\"": {"316SS": 37.1, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1\"": {"316SS": 39.95, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/4\"": {"316SS": 58.95, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/2\"": {"316SS": 62.75, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2\"": {"316SS": 72.25, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2-1/2\"": {"316SS": 135, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "3\"": {"316SS": 138, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "4\"": {"316SS": 225, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0}
    },
    400: {
        "1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "3/4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2-1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "3\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0}
    },
    600: {
        "1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "3/4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2-1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "3\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0}
    },
    900: {
        "1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "3/4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2-1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "3\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0}
    }
}

# Flange Adaptor Pricing Tables
flange_adaptor_pricing_tables = {
    "psi_lt_1000": {
        "1/2\"": {"316SS": 8.16, "Alloy 20": 62.74, "Hast. C": "C/F", "PVC": 1.2, "PVDF": "C/F"},
        "3/4\"": {"316SS": 11.88, "Alloy 20": 84.51, "Hast. C": "C/F", "PVC": 1.53, "PVDF": "C/F"},
        "1\"": {"316SS": 14.85, "Alloy 20": 91.87, "Hast. C": "C/F", "PVC": 2.47, "PVDF": "C/F"},
        "1-1/4\"": {"316SS": 25.4, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 3.29, "PVDF": "C/F"},
        "1-1/2\"": {"316SS": 33.89, "Alloy 20": 123.5, "Hast. C": "C/F", "PVC": 3.53, "PVDF": "C/F"},
        "2\"": {"316SS": 42.84, "Alloy 20": 167.19, "Hast. C": "C/F", "PVC": 4.27, "PVDF": "C/F"},
        "2-1/2\"": {"316SS": 101.55, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 9.83, "PVDF": "C/F"},
        "3\"": {"316SS": 129.27, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 11.21, "PVDF": "C/F"},
        "4\"": {"316SS": 168.20, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 14.96, "PVDF": "C/F"}
    },
    "psi_gt_1000": {
        "1/2\"": {"316SS": 24.31, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "3/4\"": {"316SS": 36.19, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1\"": {"316SS": 61.56, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/4\"": {"316SS": 84.74, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "1-1/2\"": {"316SS": 125.87, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2\"": {"316SS": 175.24, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        "2-1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": "C/F", "PVDF": "C/F"},
        "3\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": "C/F", "PVDF": "C/F"},
        "4\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": "C/F", "PVDF": "C/F"}
    },
    "all": {
        "1/2\"": {"316SS": 9.53, "Alloy 20": 40.23, "Hast. C": "C/F", "PVC": 1, "PVDF": "C/F"},
        "3/4\"": {"316SS": 12, "Alloy 20": 47.58, "Hast. C": "C/F", "PVC": 1, "PVDF": "C/F"},
        "1\"": {"316SS": 18.5, "Alloy 20": 82.74, "Hast. C": "C/F", "PVC": 1.5, "PVDF": "C/F"},
        "1-1/4\"": {"316SS": 31.56, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 2.2, "PVDF": "C/F"},
        "1-1/2\"": {"316SS": 35.53, "Alloy 20": 99.55, "Hast. C": "C/F", "PVC": 2.5, "PVDF": "C/F"},
        "2\"": {"316SS": 56.26, "Alloy 20": 189.91, "Hast. C": "C/F", "PVC": 3.5, "PVDF": "C/F"},
        "2-1/2\"": {"316SS": "C/F", "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 5.5, "PVDF": "C/F"},
        "3\"": {"316SS": 109.26, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 6.5, "PVDF": "C/F"},
        "4\"": {"316SS": 230, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 9.5, "PVDF": "C/F"}
    }
}

def calculate_flange_adaptor_price(psi, suction_flange_size, discharge_flange_size, liquid_end_material, simplex_duplex):
    # Determine which table to use based on PSI
    if psi < 1000:
        table = flange_adaptor_pricing_tables["psi_lt_1000"]
    else:
        table = flange_adaptor_pricing_tables["psi_gt_1000"]

    # Get the prices for suction and discharge flanges from the first table
    suction_price = table.get(suction_flange_size, {}).get(liquid_end_material, 0)
    discharge_price = table.get(discharge_flange_size, {}).get(liquid_end_material, 0)

    # Get the prices for suction and discharge flanges from the "all" table
    suction_price_all = flange_adaptor_pricing_tables["all"].get(suction_flange_size, {}).get(liquid_end_material, 0)
    discharge_price_all = flange_adaptor_pricing_tables["all"].get(discharge_flange_size, {}).get(liquid_end_material, 0)

    # Handle "C/F" and "0" values
    if suction_price == "C/F" or discharge_price == "C/F" or suction_price_all == "C/F" or discharge_price_all == "C/F":
        return {"total_flange_adaptor_price": "C/F (Flange Adaptor)"}  # Return C/F message
    if suction_price == 0 or discharge_price == 0 or suction_price_all == 0 or discharge_price_all == 0:
        return {"total_flange_adaptor_price": "Unavailable (Flange Adaptor)"}  # Return Unavailable message

    # Calculate total flange adaptor price
    total_price = (suction_price + discharge_price + suction_price_all + discharge_price_all) * (5 if simplex_duplex.lower() == "simplex" else 10)
    return {"total_flange_adaptor_price": total_price}

def get_flange_price(flange_size_id, flange_size, liquid_end_material):
    if flange_size_id not in flange_pricing_tables:
        return None  # Invalid Flange Size ID

    if flange_size not in flange_pricing_tables[flange_size_id]:
        return None  # Invalid Flange Size

    price = flange_pricing_tables[flange_size_id][flange_size][liquid_end_material]
    return price

def calculate_flange_price(psi, suction_flange_size, discharge_flange_size, liquid_end_material):
    # Get the flange size ID based on PSI
    flange_size_id = get_flange_size_id(psi)
    if flange_size_id is None:
        return {"error": "Invalid PSI value for flange size calculation"}

    # Validate suction and discharge flange sizes
    if suction_flange_size not in flange_pricing_tables[flange_size_id]:
        return {"error": f"Invalid suction flange size: {suction_flange_size}"}
    if discharge_flange_size not in flange_pricing_tables[flange_size_id]:
        return {"error": f"Invalid discharge flange size: {discharge_flange_size}"}

    # Get the prices for suction and discharge flanges
    suction_price = get_flange_price(flange_size_id, suction_flange_size, liquid_end_material)
    discharge_price = get_flange_price(flange_size_id, discharge_flange_size, liquid_end_material)

    # Handle "C/F" and "0" values
    if suction_price == "C/F" or discharge_price == "C/F":
        return {"total_flange_price": "C/F (Flange)"}  # Return C/F message
    if suction_price == 0 or discharge_price == 0:
        return {"total_flange_price": "Unavailable (Flange)"}  # Return Unavailable message

    # Calculate total flange price
    total_price = (suction_price * 1.6 + discharge_price * 1.6) * 3
    return {"total_flange_price": total_price}

def replace_last_letter(model, ball_size):
    """
    Replace the last letter of the model name based on the ball size.
    Skip if ball_size is "Standard".
    """
    if ball_size.lower() == "standard":
        return model  # Do not replace if ball_size is "Standard"

    # Get the replacement letter from the mapping
    replacement = ball_size_mapping.get(ball_size, "")

    if replacement:
        # Replace the last letter of the model name
        model = model[:-1] + replacement

    return model

def replace_model_letters(model, liquid_end_material, balls_type):
    """
    Replace the two letters after the dash in the model name based on liquid end material and ball type.
    """
    # Define the replacement table
    replacement_table = {
        "316SS": {"Std.": "04", "Ceramic": "74", "Tungsten": "84"},
        "Alloy 20": {"Std.": "05", "Ceramic": "75", "Tungsten": "85"},
        "Hast. C": {"Std.": "06", "Ceramic": "76", "Tungsten": "86"},
        "PVC": {"Std.": "08", "Ceramic": "08", "Tungsten": "88"},
        "PVDF": {"Std.": "0A", "Ceramic": "0A", "Tungsten": "8A"},
    }

    # Get the replacement letters
    replacement = replacement_table.get(liquid_end_material, {}).get(balls_type, "00")

    # Replace the two letters after the dash
    if "-" in model:
        parts = model.split("-")
        if len(parts) > 1:
            # Replace the two letters after the dash
            parts[1] = replacement + parts[1][2:]  # Keep the rest of the string after the two letters
            model = "-".join(parts)

    return model

def calculate_suction_lift_price(series, liquid_end_material, suction_lift):
    """
    Calculate the suction lift price based on the series and liquid end material.
    Only add the price if suction_lift is "yes".
    """
    if suction_lift.lower() != "yes":
        return 0  # Do not add suction lift price if customer selects "no"

    if series == "Series 1000":
        if liquid_end_material in ["316SS", "Alloy 20", "Hast. C", "PVC", "PVDF"]:
            return 844  # All materials in Series 1000 add $844
    elif series == "Series 2000":
        if liquid_end_material == "316SS":
            return "C/F"
        elif liquid_end_material == "Alloy 20":
            return 2860
        elif liquid_end_material in ["Hast. C", "PVC", "PVDF"]:
            return "C/F"
    return 0

def find_best_pump(customer_name=None, gph=None, lph=None, psi=None, bar=None, hz=None, 
                   simplex_duplex=None, want_motor=None, motor_type=None, 
                   motor_power=None, spm=None, diaphragm=None, liquid_end_material=None, 
                   leak_detection=None, phase=None, degassing=None, flange=None, 
                   balls_type=None, suction_lift=None, ball_size=None, suction_flange_size=None, 
                   discharge_flange_size=None, food_graded_oil=None, spare_parts_kit=None, 
                   back_pressure_valve=None, pressure_relief_valve=None, pulsation_dampener=None,
                   calibration_column=None):
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
        return {"error": "Simplex/Duplex is required. Please provide either 'Simplex', 'Duplex', or 'Both'."}

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
    valid_liquid_end_material = ["316SS", "Alloy 20", "Hast. C", "PVC", "PVDF"]
    if liquid_end_material is None or liquid_end_material not in valid_liquid_end_material:
        return {"error": "Liquid End Material is required and must be one of the following: 316SS, Alloy 20, Hast. C, PVC, PVDF."}

    # Ensure leak detection is provided and is one of the valid options
    valid_leak_detection_options = ["no", "conductive", "vacuum"]
    if leak_detection is None or leak_detection.lower() not in valid_leak_detection_options:
        return {"error": "Leak Detection is required and must be one of the following: No, Conductive, Vacuum."}

    # Ensure phase is provided and is one of the valid options
    valid_phase_options = ["1 Ph", "3 Ph"]
    if phase is None or phase not in valid_phase_options:
        return {"error": "Phase is required and must be one of the following: 1 Ph, 3 Ph."}

    # Ensure degassing is provided and is either "yes" or "no"
    if degassing.lower() not in ["yes", "no"]:
        return {"error": "Degassing is required and must be either 'yes' or 'no'."}

    # Ensure flange is provided and is either "yes" or "no"
    if flange.lower() not in ["yes", "no"]:
        return {"error": "Flange is required and must be either 'yes' or 'no'."}

    # Ensure balls type is provided and is one of the valid options
    valid_balls_type_options = ["Std.", "Tungsten", "Ceramic"]
    if balls_type is None or balls_type not in valid_balls_type_options:
        return {"error": "Balls Type is required and must be one of the following: Std., Tungsten, Ceramic."}

    # Ensure suction_lift is provided and is either "yes" or "no"
    if suction_lift.lower() not in ["yes", "no"]:
        return {"error": "Suction Lift is required and must be either 'yes' or 'no'."}

    # Ensure ball_size is provided and is one of the valid options
    if balls_type in ["Tungsten", "Ceramic"]:
        valid_ball_size_options = ["Standard", "1/4\"", "3/8\"", "1/2\"", "7/8\"", "1-1/4\"", "1-1/2\""]
    else:
        valid_ball_size_options = [
            "1/8\"", "3/16\"", "1/4\"", "3/8\"", "1/2\"", "5/8\"", "3/4\"", "7/8\"", 
            "1\"", "1-1/4\"", "1-1/2\"", "1-3/4\"", "2\"", "2-1/4\"", "2-1/2\"", 
            "3\"", "3-1/2\"", "1/2\" Double Ball", "7/8\" Double Ball", 
            "1/2\" Suction and 3/8\" Discharge", "3/8\" Double Ball", "Standard"
        ]

    # Normalize the ball_size input to handle cases like "2-1/4""
    if ball_size:
        ball_size = ball_size.replace("%26quot%3B", "\"")  # Replace URL-encoded quotes
        ball_size = ball_size.replace("&quot;", "\"")  # Replace HTML-encoded quotes
        ball_size = ball_size.strip()  # Remove any leading/trailing whitespace

    if ball_size is None or ball_size not in valid_ball_size_options:
        return {"error": f"Ball Size is required and must be one of the following: {', '.join(valid_ball_size_options)}."}

    # Ensure flange sizes are provided only if flange is "Yes"
    if flange and flange.lower() == "yes":
        print(f"Suction Flange Size: {suction_flange_size}")
        print(f"Discharge Flange Size: {discharge_flange_size}")
        if not suction_flange_size or not discharge_flange_size:
            return {"error": "Suction and Discharge flange sizes are required when selecting flanges."}
    else:
        # If flange is "No", ignore flange sizes
        suction_flange_size = None
        discharge_flange_size = None

    # Ensure Food_Graded_Oil is provided and is either "yes" or "no"
    if food_graded_oil.lower() not in ["yes", "no"]:
        return {"error": "Food Graded Oil is required and must be either 'yes' or 'no'."}

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
        # Ensure Liquid End Material matches
        if pump["Liquid_End_Material"] != liquid_end_material:
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
            high_pressure = float(pump["Max_Pressure_PSI_High_Pressure_Adder"])
        else:
            max_pressure = float(pump["Max_Pressure_Bar"])
            high_pressure = float(pump["Max_Pressure_Bar_High_Pressure_Adder"])

        use_hp = psi > max_pressure if psi is not None else bar > max_pressure
        if (psi is not None and psi > max_pressure and (not high_pressure or psi > high_pressure)) or \
           (bar is not None and bar > max_pressure and (not high_pressure or bar > high_pressure)):
            continue  # Skip if pressure exceeds even high-pressure max

        # Ensure pump's Max_SPM is <= user-input SPM
        max_spm = float(pump["Max_SPM"]) if pump["Max_SPM"] is not None else 0
        if max_spm > spm:
            continue  # Skip if pump's Max_SPM exceeds user-input SPM

        final_model = pump["Model"]

        if diaphragm.lower() == "ptfe":
            if leak_detection.lower() == "no":
                final_model = final_model[:3] + "T" + final_model[4:]
            elif leak_detection.lower() == "conductive":
                final_model = final_model[:3] + "W" + final_model[4:]
            elif leak_detection.lower() == "vacuum":
                final_model = final_model[:3] + "K" + final_model[4:]
        elif diaphragm.lower() == "viton":
            if leak_detection.lower() == "no":
                final_model = final_model[:3] + "B" + final_model[4:]
            elif leak_detection.lower() == "conductive":
                final_model = final_model[:3] + "R" + final_model[4:]
        elif diaphragm.lower() == "hypalon":
            if leak_detection.lower() == "no":
                final_model = final_model[:3] + "A" + final_model[4:]
            elif leak_detection.lower() == "conductive":
                final_model = final_model[:3] + "M" + final_model[4:]
        elif diaphragm.lower() == "epdm":
            if leak_detection.lower() == "no":
                final_model = final_model[:3] + "C" + final_model[4:]

        # Replace the last letter based on ball_size (if not "Standard")
        final_model = replace_last_letter(final_model, ball_size)
        
        if flange.lower() == "yes":
            final_model += "F"

        if degassing.lower() == "yes":
            final_model += "D"

        if use_hp:
            final_model += "HP"

        final_model = replace_model_letters(final_model, liquid_end_material, balls_type)

        # Handle Ball Size Pricing
        ball_size_price = 0
        ball_size_display = ball_size  # Default to the selected ball size

        if balls_type == "Std.":
            # Handle special ball sizes (Z, V, W) for Standard balls
            if ball_size == "3/8\" Double Ball":
                ball_size_price = 250
            elif ball_size == "1/2\" Double Ball":
                ball_size_price = 350
            elif ball_size == "7/8\" Double Ball":
                ball_size_price = 450

            # Fetch the Ball_Size from the database if the option is "Standard"
            if ball_size == "Standard":
                ball_size_display = f"Standard ({pump['Ball_Size']})"
        elif balls_type in ["Tungsten", "Ceramic"]:
            # Handle Standard option for Tungsten and Ceramic balls
            if ball_size == "Standard":
                ball_size_display = f"Standard ({pump['Ball_Size']})"
                # Define base prices for ball sizes
                if balls_type == "Tungsten":
                    ball_size_prices = {
                        "1/4\"": 4.00,
                        "3/8\"": 7.67,
                        "1/2\"": 17.22,
                        "7/8\"": 49.54,
                        "1-1/4\"": 102.15,
                        "1-1/2\"": 144.30
                    }
                elif balls_type == "Ceramic":
                    ball_size_prices = {
                        "1/4\"": 4.60,
                        "3/8\"": 3.00,
                        "1/2\"": 4.60,
                        "7/8\"": 28.95,
                        "1-1/4\"": 60.05,
                        "1-1/2\"": 70.55
                    }

                # Apply the base price for the selected ball size
                if pump['Ball_Size'] in ball_size_prices:
                    base_price = ball_size_prices[pump['Ball_Size']]
                    if balls_type == "Tungsten":
                        ball_size_price = base_price * 2.89  # Multiply by 2.89 for Tungsten
                    elif balls_type == "Ceramic":
                        ball_size_price = base_price * 1.7  # Multiply by 1.7 for Ceramic

        # Ensure Simplex/Duplex matches or allow "both"
        if simplex_duplex.lower() != "both" and pump["Simplex_Duplex"].lower() != simplex_duplex.lower():
            continue

        # Start total price calculation (without suction lift)
        pump_price = float(pump["Pump_Price"]) if pump["Pump_Price"] is not None else 0
        motor_price = 0
        diaphragm_price = 0
        leak_detection_price = 0
        flange_price = 0
        spare_parts_kit_price_value = float(pump["Spare_Parts_Kit_Price"]) if pump["Spare_Parts_Kit_Price"] not in [None, "0"] else 0
        spare_parts_kit_info = pump.get("Spare_Parts_Kit_Info")
        calibration_column_price_value = float(pump["Calibration_Column"])
        
        # Determine correct motor price column
        if want_motor == "yes":
            if motor_type == "TEFC" and motor_power == "AC":
                motor_price_column = "TEFC_AC_Price"
            elif motor_type == "XPFC" and motor_power == "AC":
                motor_price_column = "XPFC_AC_Price"
            elif motor_type == "TEFC" and motor_power == "DC":
                motor_price_column = "TEFC_DC_Price"
            elif motor_type == "XPFC" and motor_power == "DC":
                motor_price_column = "XPFC_DC_Price"
            else:
                return {"error": "Invalid motor type or power. Choose TEFC/XPFC and AC/DC correctly."}

            motor_price_value = pump[motor_price_column]

            # Skip this pump if motor price is 0 for DC motor
            if motor_power == "DC" and motor_price_value == "0":
                continue

            # Handle "C/F" values
            if motor_price_value == "C/F":
                motor_price = "C/F"
            else:
                motor_price = float(motor_price_value) if motor_price_value is not None else 0

        # Determine diaphragm price - skip if price is 0
        if diaphragm.lower() == "viton":
            viton_price = pump["Viton"]
            if viton_price is None or float(viton_price) == 0:
                continue  # Skip this pump if Viton price is 0 or None
            diaphragm_price = float(viton_price)
        elif diaphragm.lower() == "hypalon":
            hypalon_price = pump["Hypalon"]
            if hypalon_price is None or float(hypalon_price) == 0:
                continue  # Skip this pump if Hypalon price is 0 or None
            diaphragm_price = float(hypalon_price)
        elif diaphragm.lower() == "epdm":
            epdm_price = pump["EPDM"]
            if epdm_price is None or float(epdm_price) == 0:
                continue  # Skip this pump if EPDM price is 0 or None
            diaphragm_price = float(epdm_price)
        elif diaphragm.lower() != "ptfe":
            continue

        # Determine leak detection price
        if leak_detection.lower() == "conductive":
            leak_detection_price = float(pump["Conductive_Leak_Detection_Price_Adder"]) if pump["Conductive_Leak_Detection_Price_Adder"] is not None else 0
        elif leak_detection.lower() == "vacuum":
            leak_detection_price = float(pump["Vacuum_Leak_Detection_Price_Adder"]) if pump["Vacuum_Leak_Detection_Price_Adder"] is not None else 0
        else:
            leak_detection_price = 0

        # Calculate Food Graded Oil price
        food_graded_oil_price = 0
        if food_graded_oil.lower() == "yes":
            if pump["Series"] == "Series 1000":
                food_graded_oil_price = 140
            elif pump["Series"] == "Series 2000":
                food_graded_oil_price = 280
            elif pump["Series"] == "Series 3000":
                food_graded_oil_price = 840
            elif pump["Series"] == "Series 4000":
                food_graded_oil_price = 2200
            elif pump["Series"] == "Series 900":
                food_graded_oil_price = 44

        # Updated total price calculation
        total_price = pump_price

        # Add degassing price if applicable
        if degassing.lower() == "yes":
            total_price += 450

        # Add ball size price if applicable
        total_price += ball_size_price

        # Round up the total price
        if isinstance(total_price, (int, float)):
            total_price_rounded = math.ceil(total_price)
        else:
            total_price_rounded = total_price  # Handle "C/F" case

        annotations = []

        # Add motor price if it's not "C/F"
        if motor_price != "C/F":
            total_price += motor_price
        else:
            annotations.append("C/F (Motor)")

        if flange_price != "C/F":
            total_price += flange_price
        else:
            annotations.append("C/F (Flange)")

        # Add diaphragm price if not "ptfe"
        total_price += diaphragm_price

        # Add leak detection price
        total_price += leak_detection_price

        # Add HP adder price if it's not "C/F"
        if use_hp and pump["High_Pressure_Adder_Price"] is not None and pump["High_Pressure_Adder_Price"] != "C/F":
            total_price += float(pump["High_Pressure_Adder_Price"])
        elif use_hp and pump["High_Pressure_Adder_Price"] == "C/F":
            annotations.append("C/F (HP)")

        # Add ball size price if applicable
        total_price += ball_size_price

        # Add Food Graded Oil price if applicable
        total_price += food_graded_oil_price

        # Round up the total price to the nearest whole number
        if isinstance(total_price, (int, float)):
            total_price_rounded = math.ceil(total_price)
        else:
            total_price_rounded = total_price  # Handle "C/F" case

        # Add annotations for "C/F" cases
        if annotations:
            total_price_rounded = f"{total_price_rounded} + {' + '.join(annotations)}"

        # print("PUMPS")
        # print(final_model)
        # print(total_price_rounded)

        filtered_pumps.append({
            "model": final_model,
            "series": pump["Series"],
            "simplex_duplex": pump["Simplex_Duplex"],
            "gph": float(pump["GPH_60Hz"]) if hz == 60 else float(pump["GPH_50Hz"]),
            "lph": float(pump["LPH_60Hz"]) if hz == 60 else float(pump["LPH_50Hz"]),
            "psi": float(pump["Max_Pressure_PSI"]),
            "bar": float(pump["Max_Pressure_Bar"]),
            "high_pressure_psi": float(pump["Max_Pressure_PSI_High_Pressure_Adder"]),
            "high_pressure_bar": float(pump["Max_Pressure_Bar_High_Pressure_Adder"]),
            "max_spm": float(pump["Max_SPM"]),
            "liquid_end_material": pump["Liquid_End_Material"],
            "pump_price": pump_price,
            "motor_price": motor_price,
            "diaphragm_price": diaphragm_price,
            "leak_detection_price": leak_detection_price,
            "flange_price": flange_price,
            "total_price": total_price_rounded,
            "phase": phase,
            "ball_size_price": ball_size_price,
            "ball_size_display": ball_size_display,
            "Motor_HP_AC": pump.get("Motor_HP_AC", "N/A"),
            "Motor_HP_AC_High_Pressure": pump.get("Motor_HP_AC_High_Pressure", "N/A"),
            "Motor_HP_DC_TEFC": pump.get("Motor_HP_DC_TEFC", "N/A"),
            "Motor_HP_DC_XPFC": pump.get("Motor_HP_DC_XPFC", "N/A"),
            "food_graded_oil_price": food_graded_oil_price,
            "customer_name": customer_name,
            "spare_parts_kit_price_value": spare_parts_kit_price_value,
            "spare_parts_kit_info": spare_parts_kit_info,
            "calibration_column_price_value": calibration_column_price_value,
            "OG_Model": pump["Model"]
        })

    # Inside the `find_best_pump` function, after selecting the best pump
    if filtered_pumps:
        # Sort pumps by total_price, GPH, SPM, and PSI
        filtered_pumps.sort(key=lambda x: (
            float('inf') if isinstance(x["total_price"], str) else x["total_price"],  # Sort by price
            x["gph"],  # Sort by GPH (ascending)
            x["max_spm"],  # Sort by SPM (ascending)
            x["psi"]  # Sort by PSI (ascending)
        ))

        best_pump = filtered_pumps[0]
        # Add additional details to the best_pump dictionary
        best_pump["want_motor"] = want_motor
        best_pump["motor_type"] = motor_type
        best_pump["motor_power"] = motor_power
        best_pump["use_hp"] = use_hp
        best_pump["Liq_Inlet"] = pump["Liq_Inlet"]
        best_pump["Liq_Outlet"] = pump["Liq_Outlet"]
        best_pump["suction_flange_size"] = suction_flange_size
        best_pump["discharge_flange_size"] = discharge_flange_size
        best_pump["food_graded_oil"] = food_graded_oil
        best_pump["food_graded_oil_price"] = food_graded_oil_price

        # Store base price (without optional accessories)
        if isinstance(best_pump["total_price"], (int, float)):
            best_pump["base_price"] = best_pump["total_price"]
        else:
            best_pump["base_price"] = "C/F"  # If base price already has C/F or text

        # Initialize optional accessories price
        optional_accessories_total_price = 0
        optional_accessories_notes = []

        # --- Spare Parts Kit (first optional accessory) ---
        if spare_parts_kit == "Yes":
            if best_pump["spare_parts_kit_price_value"] == 0:
                best_pump["spare_parts_kit_price"] = "C/F"
                best_pump["spare_parts_kit_message"] = "C/F (Spare Parts Kit)"
                optional_accessories_notes.append("C/F (Spare Parts Kit)")
            else:
                best_pump["spare_parts_kit_price"] = math.ceil(best_pump["spare_parts_kit_price_value"])
                best_pump["spare_parts_kit_message"] = best_pump["spare_parts_kit_info"]
                optional_accessories_total_price += best_pump["spare_parts_kit_price"]
        else:
            best_pump["spare_parts_kit_price"] = 0
            best_pump["spare_parts_kit_message"] = "Not included"

        # --- Back Pressure Valve ---
        if back_pressure_valve == "Yes":
            conn = mysql.connector.connect(**db_config)
            cursor = conn.cursor(dictionary=True)
            cursor.execute("SELECT Back_Pressure_Valve_150, Back_Pressure_Valve_750, Connection_Size FROM pumps WHERE Model = %s", (best_pump["OG_Model"],))
            bp_data = cursor.fetchone()
            cursor.close()
            conn.close()

            selected_bp_price = None
            connection_size = "N/A"

            if bp_data:
                connection_size = bp_data.get("Connection_Size", "N/A")

                if psi <= 150:
                    selected_bp_price = bp_data.get("Back_Pressure_Valve_150")
                elif psi <= 750:
                    selected_bp_price = bp_data.get("Back_Pressure_Valve_750")

            if selected_bp_price in [None, 0, "0", "C/F"]:
                best_pump["back_pressure_valve_price"] = "C/F"
                best_pump["back_pressure_valve_message"] = "C/F (Back Pressure Valve)"
                optional_accessories_notes.append("C/F (Back Pressure Valve)")
            else:
                best_pump["back_pressure_valve_price"] = math.ceil(float(selected_bp_price))
                best_pump["back_pressure_valve_message"] = (
                    f"Back Pressure Valve in {liquid_end_material} with {connection_size}. Max Pressure is {psi} PSI."
                )
                optional_accessories_total_price += best_pump["back_pressure_valve_price"]
        else:
            best_pump["back_pressure_valve_price"] = 0
            best_pump["back_pressure_valve_message"] = "Not included"

        # --- Pressure Relief Valve ---
        if pressure_relief_valve == "Yes":
            conn = mysql.connector.connect(**db_config)
            cursor = conn.cursor(dictionary=True)
            cursor.execute("SELECT Pressure_Relief_Valve_150, Pressure_Relief_Valve_750, Connection_Size, Port FROM pumps WHERE Model = %s", (best_pump["OG_Model"],))
            pr_data = cursor.fetchone()
            cursor.close()
            conn.close()

            selected_pr_price = None
            if pr_data:
                connection_size = pr_data.get("Connection_Size", "N/A")
                port = pr_data.get("Port")
                if not port or port.strip() == "":
                    port = "C/F Port"

                if psi <= 150:
                    selected_pr_price = pr_data.get("Pressure_Relief_Valve_150")
                elif psi <= 750:
                    selected_pr_price = pr_data.get("Pressure_Relief_Valve_750")

                if selected_pr_price in [None, 0, "0", "C/F"]:
                    best_pump["pressure_relief_valve_price"] = "C/F"
                    best_pump["pressure_relief_valve_message"] = "C/F (Pressure Relief Valve)"
                    optional_accessories_notes.append("C/F (Pressure Relief Valve)")
                else:
                    best_pump["pressure_relief_valve_price"] = math.ceil(float(selected_pr_price))
                    best_pump["pressure_relief_valve_message"] = (
                        f"{port} Pressure Relief Valve in {liquid_end_material} with {connection_size}. Max. Pressure is {psi} PSI."
                    )
                    optional_accessories_total_price += best_pump["pressure_relief_valve_price"]
        else:
            best_pump["pressure_relief_valve_price"] = 0
            best_pump["pressure_relief_valve_message"] = "Not included"

        # Store the user's input
        best_pump["pressure_relief_valve"] = pressure_relief_valve

        # --- Pulsation Dampener ---
        if pulsation_dampener == "Yes":
            conn = mysql.connector.connect(**db_config)
            cursor = conn.cursor(dictionary=True)
            cursor.execute("SELECT Pulsation_Dampener FROM pumps WHERE Model = %s", (best_pump["OG_Model"],))
            pd_data = cursor.fetchone()
            cursor.close()
            conn.close()

            pd_price = pd_data.get("Pulsation_Dampener") if pd_data else None

            if pd_price in [None, 0, "0", "C/F"]:
                best_pump["pulsation_dampener_price"] = "C/F"
                best_pump["pulsation_dampener_message"] = "C/F (Pulsation Dampener)"
                optional_accessories_notes.append("C/F (Pulsation Dampener)")
            else:
                best_pump["pulsation_dampener_price"] = math.ceil(float(pd_price))
                best_pump["pulsation_dampener_message"] = (
                    f"Pulsation Dampener in {liquid_end_material} with a Viton bladder and Max pressure of {psi} PSI."
                )
                optional_accessories_total_price += best_pump["pulsation_dampener_price"]
        else:
            best_pump["pulsation_dampener_price"] = 0
            best_pump["pulsation_dampener_message"] = "Not included"
        best_pump["pulsation_dampener"] = pulsation_dampener

        if calibration_column == "Yes":
            best_pump["calibration_column_price"] = math.ceil(best_pump["calibration_column_price_value"])
            optional_accessories_total_price += best_pump["calibration_column_price"]
        else:
            best_pump["calibration_column_price"] = 0

        # Save for PDF use
        best_pump["optional_accessories_total_price"] = optional_accessories_total_price
        best_pump["optional_accessories_notes"] = optional_accessories_notes

        # Combine C/F notes from base_price and optional accessories
        base_annotations = []
        if isinstance(best_pump["total_price"], str) and "C/F" in best_pump["total_price"]:
            if "Motor" in best_pump["total_price"]:
                base_annotations.append("C/F (Motor)")
            if "Flange" in best_pump["total_price"]:
                base_annotations.append("C/F (Flange)")
            if "HP" in best_pump["total_price"]:
                base_annotations.append("C/F (HP)")
            if "Suction Lift" in best_pump["total_price"]:
                base_annotations.append("C/F (Suction Lift)")
            if "Flange Adaptor" in best_pump["total_price"]:
                base_annotations.append("C/F (Flange Adaptor)")

        # Combine all C/F notes
        all_cf_notes = base_annotations + optional_accessories_notes

        # Final total price formatting
        if isinstance(best_pump["base_price"], (int, float)) and isinstance(optional_accessories_total_price, (int, float)):
            final_price = best_pump["base_price"] + optional_accessories_total_price
            if all_cf_notes:
                best_pump["final_total_price"] = f"${final_price} + {' + '.join(all_cf_notes)}"
            else:
                best_pump["final_total_price"] = f"${final_price}"
        else:
            price_str = f"{best_pump['base_price']}" if isinstance(best_pump["base_price"], str) else f"${best_pump['base_price']}"
            if all_cf_notes:
                best_pump["final_total_price"] = f"{price_str} + {' + '.join(all_cf_notes)}"
            else:
                best_pump["final_total_price"] = price_str

        # Final Total Price (Base + Optional Accessories)
        if isinstance(best_pump["base_price"], (int, float)) and isinstance(best_pump["optional_accessories_total_price"], (int, float)):
            best_pump["final_total_price"] = best_pump["base_price"] + best_pump["optional_accessories_total_price"]
        else:
            # Handle C/F notes
            price_str = f"${best_pump['base_price']}" if isinstance(best_pump["base_price"], (int, float)) else str(best_pump["base_price"])
            cf_notes = [note for note in best_pump["optional_accessories_notes"] if "C/F" in note]
            if cf_notes:
                best_pump["final_total_price"] = f"{price_str} + {' + '.join(cf_notes)}"
            else:
                best_pump["final_total_price"] = price_str

        # Later, when updating the total price with spare parts kit:
        if spare_parts_kit == "Yes":
            if best_pump["spare_parts_kit_price"] == "C/F":
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Spare Parts Kit)"
                else:
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Spare Parts Kit)"
            elif best_pump["spare_parts_kit_price"] > 0:
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${best_pump['spare_parts_kit_price']}"
                else:
                    best_pump["total_price"] += best_pump["spare_parts_kit_price"]

        # Add flange price AFTER choosing the cheapest pump
        flange_price = 0
        flange_message = None
        if flange and flange.lower() == "yes":
            flange_price_result = calculate_flange_price(psi, suction_flange_size, discharge_flange_size, liquid_end_material)
            if "error" in flange_price_result:
                return flange_price_result  # Return the error if any

            flange_price = flange_price_result["total_flange_price"]
            print(f"Total Flange Price: {flange_price}")  # Debug: Print total flange price

            # Update total price with flange price (if applicable)
            if isinstance(flange_price, str):  # Handle "C/F" or "Unavailable" cases
                if isinstance(best_pump["total_price"], str):
                    # If total price is already a string (e.g., "C/F"), append the flange price message
                    best_pump["total_price"] = f"{best_pump['total_price']} + {flange_price}"
                else:
                    # If total price is a number, convert it to a string and append the flange price message
                    best_pump["total_price"] = f"{best_pump['total_price']} + {flange_price}"
            else:
                # If flange price is a number, add it to the total price
                if isinstance(best_pump["total_price"], str):
                    # If total price is already a string (e.g., "C/F"), append the flange price
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${flange_price}"
                else:
                    best_pump["total_price"] += flange_price
        else:
            # If flange is "No", set flange_price to 0
            flange_price = 0
            flange_message = "Flange not selected"

        # Add flange details to the best pump
        best_pump["flange_price"] = flange_price
        best_pump["flange_message"] = flange_message

        # Add suction lift price AFTER choosing the cheapest pump
        suction_lift_price = 0
        suction_lift_message = None
        if suction_lift.lower() == "yes":
            suction_lift_price = calculate_suction_lift_price(best_pump["series"], liquid_end_material, suction_lift)
            if suction_lift_price == 0:  # Suction lift is not available for this series
                suction_lift_message = "Suction lift is not available"

        # Update total price with suction lift price (if applicable)
        if suction_lift_price != "C/F" and suction_lift_price != 0:
            if isinstance(best_pump["total_price"], str):
                # If total price is already a string (e.g., "C/F"), append the suction lift price
                best_pump["total_price"] = f"{best_pump['total_price']} + ${suction_lift_price}"
            else:
                best_pump["total_price"] += suction_lift_price
        elif suction_lift_price == "C/F":
            best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Suction Lift)"

        # Add suction lift details to the best pump
        best_pump["suction_lift_price"] = suction_lift_price
        best_pump["suction_lift_message"] = suction_lift_message

        # Add flange adaptor price AFTER choosing the cheapest pump
        flange_adaptor_price = 0
        flange_adaptor_message = None
        if flange and flange.lower() == "yes":
            flange_adaptor_price_result = calculate_flange_adaptor_price(psi, suction_flange_size, discharge_flange_size, liquid_end_material, simplex_duplex)
            if "error" in flange_adaptor_price_result:
                return flange_adaptor_price_result  # Return the error if any

            flange_adaptor_price = flange_adaptor_price_result["total_flange_adaptor_price"]
            print(f"Total Flange Adaptor Price: {flange_adaptor_price}")  # Debug: Print total flange adaptor price

            # Update total price with flange adaptor price (if applicable)
            if isinstance(flange_adaptor_price, str):  # Handle "C/F" or "Unavailable" cases
                if isinstance(best_pump["total_price"], str):
                    # If total price is already a string (e.g., "C/F"), append the flange adaptor price message
                    best_pump["total_price"] = f"{best_pump['total_price']} + {flange_adaptor_price}"
                else:
                    # If total price is a number, convert it to a string and append the flange adaptor price message
                    best_pump["total_price"] = f"{best_pump['total_price']} + {flange_adaptor_price}"
            else:
                # If flange adaptor price is a number, add it to the total price
                if isinstance(best_pump["total_price"], str):
                    # If total price is already a string (e.g., "C/F"), append the flange adaptor price
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${flange_adaptor_price}"
                else:
                    best_pump["total_price"] += flange_adaptor_price
        else:
            # If flange is "No", set flange_adaptor_price to 0
            flange_adaptor_price = 0
            flange_adaptor_message = "Flange Adaptor not selected"

        # Add flange adaptor details to the best pump
        best_pump["flange_adaptor_price"] = flange_adaptor_price
        best_pump["flange_adaptor_message"] = flange_adaptor_message

        spare_parts_kit_price = None
        spare_parts_kit_message = None

        if spare_parts_kit == "Yes":
            if spare_parts_kit_price_value == 0:
                spare_parts_kit_price = "C/F"
                spare_parts_kit_message = "C/F (Spare Parts Kit)"
            else:
                spare_parts_kit_price = float(spare_parts_kit_price_value)

            # Update total price with spare parts kit price (if applicable)
            if spare_parts_kit_price != 0:
                spare_parts_kit_price = math.ceil(spare_parts_kit_price)
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${spare_parts_kit_price}"
                else:
                    best_pump["total_price"] += spare_parts_kit_price
            elif spare_parts_kit_price == "C/F":
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Spare Parts Kit)"
                else:
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Spare Parts Kit)"

        # Add spare parts kit details to the best pump
        best_pump["spare_parts_kit"] = spare_parts_kit
        best_pump["spare_parts_kit_message"] = spare_parts_kit_message

        # Add Back Pressure Valve price to total_price
        if back_pressure_valve == "Yes":
            if best_pump["back_pressure_valve_price"] == "C/F":
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Back Pressure Valve)"
                else:
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Back Pressure Valve)"
            elif isinstance(best_pump["back_pressure_valve_price"], (int, float)):
                best_pump["total_price"] += best_pump["back_pressure_valve_price"]

        # Add Pressure Relief Valve price to total_price
        if pressure_relief_valve == "Yes":
            if best_pump["pressure_relief_valve_price"] == "C/F":
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Pressure Relief Valve)"
                else:
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Pressure Relief Valve)"
            elif isinstance(best_pump["pressure_relief_valve_price"], (int, float)):
                best_pump["total_price"] += best_pump["pressure_relief_valve_price"]

        # Add Calibration Column price to total_price
        if calibration_column == "Yes":
            best_pump["total_price"] += best_pump["calibration_column_price"]
        best_pump["calibration_column"] = calibration_column

        # Add Pulsation Dampener price to total_price
        if pulsation_dampener == "Yes":
            if best_pump["pulsation_dampener_price"] == "C/F":
                best_pump["total_price"] = str(best_pump["total_price"]) + " + C/F (Pulsation Dampener)"
            elif isinstance(best_pump["pulsation_dampener_price"], (int, float)):
                if isinstance(best_pump["total_price"], (int, float)):
                    best_pump["total_price"] += best_pump["pulsation_dampener_price"]
                else:
                    best_pump["total_price"] = str(best_pump["total_price"]) + f" + ${best_pump['pulsation_dampener_price']}"

        best_pump["back_pressure_valve"] = back_pressure_valve
        # best_pump["back_pressure_valve_price"] = back_pressure_valve_price
        # best_pump["back_pressure_valve_message"] = back_pressure_valve_message

        return best_pump
    else:
        return {"error": "No suitable pump found for the given specifications."}

def combine_cf_annotations(base, optional_notes):
    annotations = []

    if isinstance(base, str) and "C/F" in base:
        annotations.append("C/F (Base Pump Price)")

    annotations += [note for note in optional_notes if "C/F" in note]

    if annotations:
        return " + " + " + ".join(annotations)
    return ""

def generate_pdf(pump_data, filename="pump_quote.pdf"):
    """Generates a PDF quote for the pump and saves it as a file."""
    doc = SimpleDocTemplate(filename, pagesize=letter)
    elements = []
    
    styles = getSampleStyleSheet()
    title_style = ParagraphStyle(
        name="CenteredTitle",
        parent=styles["Heading2"],
        fontSize=16,  # Increased font size
        alignment=1,  # Center alignment
        spaceAfter=6,  # Reduced space below the title
    )
    heading_style = styles["Heading2"]
    normal_style = styles["BodyText"]
    footer_style = ParagraphStyle(
        name="FooterStyle",
        parent=normal_style,
        fontSize=9,
        textColor=colors.grey,
        leading=12,
        spaceBefore=10,
    )

    # ✅ Generate Auto Date & Quote Number
    today = datetime.today()
    quote_number = f"AQQ{today.strftime('%y%m%d')}__"  # Format: AQQYYMMDD__
    formatted_date = today.strftime('%d-%b-%y')  # Format: DD-MMM-YY

    # ✅ Create Smaller 2x2 Table (Quote # | Date) with Reduced Column Widths
    quote_date_table = Table([
        ["Quote #", "Date"],           # Header row
        [quote_number, formatted_date]  # Data row
    ], colWidths=[110, 110])  # Smaller width for compact size

    # ✅ Style the Quote Table
    quote_date_table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.grey),    # Grey background for headers
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.whitesmoke),  # White text for headers
        ("ALIGN", (0, 0), (-1, -1), "CENTER"),  # Center-align text
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),  # Bold header text
        ("BOTTOMPADDING", (0, 0), (-1, 0), 6),  # Smaller padding for compact look
        ("GRID", (0, 0), (-1, -1), 1, colors.black)  # Black grid lines
    ]))

    # ✅ Logo (Left), Address (Middle), Quote Table (Right)
    logo_path = "logo.png"
    address = """<b><font size="9">Acuflow-Div. of Precision</font></b><br/>
    <b><font size="9">Flow Technologies Inc.</font></b><br/>
    <font size="8">1642 McGaw Ave.<br/>
    Irvine, CA 92614<br/>
    Ph: (949) 757-1753</font>"""

    if os.path.exists(logo_path):
        logo = Image(logo_path, width=100, height=50) 

        # Add "Quote Form 2311" at the top right corner
        quote_form_text = Paragraph("<font size='7'>Quote Form 2311</font>", normal_style)

        # Create a 2x1 table for Customer information
        customer_name = pump_data.get("customer_name", "N/A")
        customer_table = Table([
            ["Customer"],  # First row
            [customer_name]  # Second row
        ], colWidths=[215], rowHeights=[20, 20])  # Smaller row heights

        # Style the Customer table
        customer_table.setStyle(TableStyle([
            ("BACKGROUND", (0, 0), (-1, 0), colors.grey),  # Grey background for the header
            ("TEXTCOLOR", (0, 0), (-1, 0), colors.whitesmoke),  # White text for the header
            ("ALIGN", (0, 0), (-1, -1), "CENTER"),  # Center-align text in all cells
            ("VALIGN", (0, 0), (-1, -1), "MIDDLE"),  # Vertically center-align text
            ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),  # Bold header text
            ("FONTSIZE", (0, 0), (-1, -1), 10),  # Slightly larger font size
            ("BOTTOMPADDING", (0, 0), (-1, 0), 2),  # Padding for the header
            ("TOPPADDING", (0, 1), (-1, 1), 5),  # Add padding to move the second row down
            ("GRID", (0, 0), (-1, -1), 1, colors.black)  # Black grid lines
        ]))

        # Create a header table with 3 columns
        header_table = Table([
            [[logo, Spacer(1, 10), Spacer(1, 10), customer_table],  # Logo + Spacer + Customer Table
             Paragraph(address, normal_style),  # Address
             [quote_form_text, quote_date_table]  # Quote Form Text + Quote Table
            ]
        ], colWidths=[115, 250, 120])  # Adjust widths for correct alignment

        # ✅ Align Everything in the Header
        header_table.setStyle(TableStyle([
            ("VALIGN", (0, 0), (-1, -1), "TOP"),  # Align everything to the top
            ("LEFTPADDING", (1, 0), (1, 0), 5),   # Reduce space between logo & address
            ("ALIGN", (0, 0), (0, 0), "LEFT"),    # Left-align logo and customer table
            ("ALIGN", (1, 0), (1, 0), "LEFT"),    # Left-align address
            ("ALIGN", (2, 0), (2, 0), "RIGHT")    # Right-align Quote Form Text & Quote Table
        ]))

        elements.append(header_table)
        elements.append(Spacer(1, 20))  # Reduce space below

    # ✅ Pump Model Name (Centered and Larger Title)
    pump_model = pump_data.get("model", "N/A")
    elements.append(Paragraph(f"<b>Pump Model:</b> {pump_model}", title_style))

    # ✅ Description Section
    elements.append(Paragraph("<b>Description:</b>", heading_style))

    # ✅ Dynamic Description (Combined into One Paragraph)
    dynamic_description = []
    ball_type = pump_data.get("balls_type", "N/A")
    diaphragm = pump_data.get("diaphragm", "N/A")
    suction_lift_text = "High Suction Lift " if pump_data.get("suction_lift", "").lower() == "yes" else ""

    if pump_data.get("flange", "").lower() == "yes":
        psi = pump_data.get("psi", 0)
        flange_size_id = get_flange_size_id(psi)  # Assume this function is defined elsewhere

        description = (
            f"Acuflow {pump_data.get('series', 'N/A')} ({pump_data.get('simplex_duplex', 'N/A')}) "
            f"hydraulic diaphragm metering pump with {suction_lift_text}liquid end in {pump_data.get('liquid_end_material', 'N/A')}. "
            f"It features {ball_type} balls and a {diaphragm} diaphragm. "
            f"The pump includes {pump_data.get('suction_flange_size', 'N/A')} ANSI RF Type #{flange_size_id} suction "
            f"and {pump_data.get('discharge_flange_size', 'N/A')} ANSI RF Type #{flange_size_id} discharge flanges. "
            f"The pump has a maximum flow capacity of {pump_data.get('gph', 'N/A')} GPH at {pump_data.get('hz', 'N/A')} Hz "
            f"and a design pressure of {pump_data.get('psi', 'N/A')} PSI."
        )
    else:
        description = (
            f"Acuflow {pump_data.get('series', 'N/A')} ({pump_data.get('simplex_duplex', 'N/A')}) "
            f"hydraulic diaphragm metering pump with {suction_lift_text}liquid end in {pump_data.get('liquid_end_material', 'N/A')}. "
            f"It features {ball_type} balls and a {diaphragm} diaphragm. "
            f"The pump includes {pump_data.get('Liq_Inlet', 'N/A')} suction and {pump_data.get('Liq_Outlet', 'N/A')} discharge check valve connections. "
            f"The pump has a maximum flow capacity of {pump_data.get('gph', 'N/A')} GPH at {pump_data.get('hz', 'N/A')} Hz "
            f"and a design pressure of {pump_data.get('psi', 'N/A')} PSI."
        )

    # Add motor description if want_motor is "yes"
    if pump_data.get("want_motor", "").lower() == "yes":
        motor_power = pump_data.get("motor_power", "").upper()
        hz = pump_data.get("hz", 60)
        phase = pump_data.get("phase", "1 Ph")

        if motor_power == "AC":
            if hz == 60:
                if phase == "1 Ph":
                    input_voltage = "115/230 VAC"
                elif phase == "3 Ph":
                    input_voltage = "230/460 VAC"
            elif hz == 50:
                if phase == "1 Ph":
                    input_voltage = "110/220 VAC"
                elif phase == "3 Ph":
                    input_voltage = "230/400 VAC"
        elif motor_power == "DC":
            input_voltage = "90 VDC"
            phase = ""  # Remove phase for DC motors

        motor_hp = pump_data.get("Motor_HP_AC", "N/A")

        description += (
            f" The pump comes with a {motor_hp} HP, {input_voltage}, {phase} {pump_data.get('motor_type', 'N/A')} motor."
        )

    # Add additional features (only if marked as "yes")
    additional_features = []
    if pump_data.get("degassing", "").lower() == "yes":
        additional_features.append("degassing valve")
    if pump_data.get("food_graded_oil", "").lower() == "yes":
        additional_features.append("food-graded oil")
    if pump_data.get("suction_lift", "").lower() == "yes":
        additional_features.append("suction lift")
    if pump_data.get("spare_parts_kit", "").lower() == "yes":
        if isinstance(pump_data.get("spare_parts_kit_price"), (int, float)):
            description += f" Includes Spare Parts Kit ({pump_data.get('spare_parts_kit_info', '')})."
        else:
            description += " Spare parts kit is C/F (call for pricing)."

    if pump_data.get("back_pressure_valve", "").lower() == "yes":
        if isinstance(pump_data.get("back_pressure_valve_price"), (int, float)):
            description += f" Includes {pump_data.get('back_pressure_valve_message', '')}."
        else:
            description += " Back Pressure Valve is C/F (call for pricing)."

    if pump_data.get("pressure_relief_valve", "").lower() == "yes":
        if isinstance(pump_data.get("pressure_relief_valve_price"), (int, float)):
            description += f" Includes {pump_data.get('pressure_relief_valve_message', '')}."
        else:
            description += " Pressure Relief Valve is C/F (call for pricing)."

    if additional_features:
        description += " The pump also includes the following features: " + ", ".join(additional_features) + "."

    # Add the combined description to the PDF
    elements.append(Paragraph(description, normal_style))
    elements.append(Spacer(1, 12))  # Minimal space after description

    # ✅ Key Specifications Table (Only include "yes" or valid data)
    elements.append(Paragraph("<b>Key Specifications:</b>", heading_style))
    elements.append(Spacer(1, 6))  # Minimal space after heading

    pump_specs = [
        ["Specification", "Value"],
        ["Series", pump_data.get("series", "N/A")],
        ["Flow Rate (GPH)", pump_data.get("gph", "N/A")],
        ["Pressure (PSI)", pump_data.get("psi", "N/A")],
        ["Frequency (Hz)", pump_data.get("hz", "N/A")],
        ["Diaphragm Material", pump_data.get("diaphragm", "N/A")],
        ["Liquid End Material", pump_data.get("liquid_end_material", "N/A")],
        ["Balls Type", pump_data.get("balls_type", "N/A")],
    ]

    # Add flange and suction lift only if marked as "yes"
    if pump_data.get("flange", "") == "Yes":
        pump_specs.append(["Flange", "Yes"])
    if pump_data.get("suction_lift", "") == "Yes":
        pump_specs.append(["Suction Lift", "Yes"])

    if pump_data.get("spare_parts_kit", "") == "Yes":
        if isinstance(pump_data.get("spare_parts_kit_price"), (int, float)):
            pump_specs.append(["Spare Parts Kit", f"${pump_data['spare_parts_kit_price']}"])
        else:
            pump_specs.append(["Spare Parts Kit", "C/F"])

    if pump_data.get("back_pressure_valve", "") == "Yes":
        if isinstance(pump_data.get("back_pressure_valve_price"), (int, float)):
            pump_specs.append(["Back Pressure Valve", f"${pump_data['back_pressure_valve_price']}"])
        else:
            pump_specs.append(["Back Pressure Valve", "C/F"])

    if pump_data.get("pressure_relief_valve", "") == "Yes":
        if isinstance(pump_data.get("pressure_relief_valve_price"), (int, float)):
            pump_specs.append(["Pressure Relief Valve", f"${pump_data['pressure_relief_valve_price']}"])
        else:
            pump_specs.append(["Pressure Relief Valve", "C/F"])

    if pump_data.get("pulsation_dampener", "") == "Yes":
        if isinstance(pump_data.get("pulsation_dampener_price"), (int, float)):
            pump_specs.append(["Pulsation Dampener", f"${pump_data['pulsation_dampener_price']}"])
        else:
            pump_specs.append(["Pulsation Dampener", "C/F"])

    if pump_data.get("calibration_column", "") == "Yes":
        if isinstance(pump_data.get("calibration_column_price"), (int, float)):
            pump_specs.append(["Calibration Column", f"${pump_data['calibration_column_price']}"])
        else:
            pump_specs.append(["Calibration Column", "C/F"])

    # Remove empty rows
    pump_specs = [row for row in pump_specs if row]

    table = Table(pump_specs, colWidths=[200, 200])
    table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.grey),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.whitesmoke),
        ("ALIGN", (0, 0), (-1, -1), "CENTER"),
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
        ("BOTTOMPADDING", (0, 0), (-1, 0), 12),
        ("GRID", (0, 0), (-1, -1), 1, colors.black)
    ]))
    elements.append(table)
    elements.append(Spacer(1, 20))

    # ✅ Add Base Price, Optional Accessories, and Final Total
    base_price = pump_data.get("base_price", "N/A")
    optional_price = pump_data.get("optional_accessories_total_price", 0)
    optional_notes = pump_data.get("optional_accessories_notes", [])
    final_price = pump_data.get("final_total_price", "N/A")

    # Format optional price if it's not numeric
    optional_price_display = (
        f"${optional_price}" if isinstance(optional_price, (int, float)) else
        " + ".join(optional_notes) if optional_notes else "N/A"
    )

    # Format final total price
    final_price_display = (
        f"${final_price}" if isinstance(final_price, (int, float)) else final_price
    )

    # --- Base Pump Price Display ---
    base_display = f"${base_price}" if isinstance(base_price, (int, float)) else base_price
    base_notes = []

    if isinstance(pump_data.get("total_price"), str) and "C/F" in pump_data["total_price"]:
        if "Motor" in pump_data["total_price"]:
            base_notes.append("C/F (Motor)")
        if "Flange" in pump_data["total_price"]:
            base_notes.append("C/F (Flange)")
        if "HP" in pump_data["total_price"]:
            base_notes.append("C/F (HP)")
        if "Suction Lift" in pump_data["total_price"]:
            base_notes.append("C/F (Suction Lift)")
        if "Flange Adaptor" in pump_data["total_price"]:
            base_notes.append("C/F (Flange Adaptor)")

    if base_notes:
        base_display += " + " + " + ".join(base_notes)

    # --- Optional Accessories Display ---
    optional_display = f"${optional_price}" if isinstance(optional_price, (int, float)) else "N/A"

    # Group C/F optional notes like: "C/F (Back Pressure Valve + Pressure Relief Valve)"
    optional_cf_notes = [note for note in optional_notes if "C/F" in note]
    optional_cf_combined = ""
    if optional_cf_notes:
        optional_cf_combined = f" + C/F ({' + '.join(note.replace('C/F (', '').replace(')', '') for note in optional_cf_notes)})"

    optional_display += optional_cf_combined

    # --- Final Total Price Display ---
    all_cf_notes = base_notes + optional_notes

    # Combine all C/F notes into one line like "C/F (Back Pressure Valve + Pressure Relief Valve)"
    cf_combined = ""
    if all_cf_notes:
        cf_combined = f" + C/F ({' + '.join(note.replace('C/F (', '').replace(')', '') for note in all_cf_notes)})"

    # Final price display logic
    if isinstance(final_price, (int, float)):
        final_price_display = f"${final_price}"
    elif isinstance(final_price, str):
        final_price_display = final_price
    else:
        final_price_display = "N/A"

    # --- Price Table ---
    price_table_data = [
        ["Base Pump Price", base_display],
        ["Optional Accessories", optional_display],
        ["Final Total Price", final_price_display]
    ]

    price_table = Table(price_table_data, colWidths=[200, 200])
    price_table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.lightgrey),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.black),
        ("ALIGN", (0, 0), (-1, -1), "CENTER"),
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
        ("BOTTOMPADDING", (0, 0), (-1, 0), 12),
        ("GRID", (0, 0), (-1, -1), 1, colors.black)
    ]))
    elements.append(price_table)
    elements.append(Spacer(1, 10))

    # ✅ Footer Notes
    elements.append(Paragraph("<b>Notes:</b>", footer_style))  # Add "Notes:" section

    # Combine all notes into a single Paragraph with <br/> for line breaks
    footer_notes = [
        "1. Your above pricing are Net prices based on Ex work Irvine, CA. Prices valid 30 days from quote date.",
        "2. If you decided to add ECCA or Leak detection system, the pump model number will change.",
        f"3. Estimated lead time is {get_lead_time(pump_data.get('series', 'N/A'))} ARO, based on current inventory and scheduling.",
        "4. There will be price adder for Material Certificates, certificate of origin and Performance test.",
        "5. Anything not clearly stated in the quote above is deemed as not included in pricing, regardless of RFQ or Specs."
    ]

    # Combine notes into a single string with <br/> tags
    footer_text = "<br/>".join(footer_notes)
    elements.append(Paragraph(footer_text, footer_style))  # Add all notes in one Paragraph

    # Generate PDF
    doc.build(elements)
    print(f"✅ PDF saved as {filename}")
    return filename

def get_lead_time(series):
    """Returns lead time based on the series."""
    if series == "Series 1000":
        return "2-3 weeks"
    elif series == "Series 2000":
        return "3-4 weeks"
    elif series == "Series 3000":
        return "4-6 weeks"
    elif series == "Series 4000":
        return "7-12 weeks"
    elif series == "Series 900":
        return "4-6 weeks"
    else:
        return "N/A"

@app.route('/get_pump', methods=['GET'])
def get_pump():
    try:
        # Log the incoming request parameters
        print("Request Args:", request.args)

        # Get parameters from the request
        customer_name = request.args.get('customer_name', type=str)
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
        phase = request.args.get('phase', type=str)
        degassing = request.args.get('degassing', type=str)
        flange = request.args.get('flange', type=str)
        balls_type = request.args.get('balls_type', type=str)
        suction_lift = request.args.get('suction_lift', type=str)
        ball_size = request.args.get('ball_size', type=str)
        suction_flange_size = request.args.get('suction_flange_size', type=str)
        discharge_flange_size = request.args.get('discharge_flange_size', type=str)
        food_graded_oil = request.args.get('food_graded_oil', type=str)
        user_email = request.args.get('user_email', type=str)
        spare_parts_kit = request.args.get('spare_parts_kit', type=str)
        back_pressure_valve = request.args.get('back_pressure_valve', type=str)
        pressure_relief_valve = request.args.get('pressure_relief_valve', type=str)
        pulsation_dampener = request.args.get('pulsation_dampener', type=str)
        calibration_column = request.args.get('calibration_column', type=str)
        
        # Log the parsed parameters
        print("Parsed Parameters:", {
            "customer_name" : customer_name,
            "gph": gph,
            "psi": psi,
            "hz": hz,
            "simplex_duplex": simplex_duplex,
            "want_motor": want_motor,
            "motor_type": motor_type,
            "motor_power": motor_power,
            "spm": spm,
            "diaphragm": diaphragm,
            "liquid_end_material": liquid_end_material,
            "leak_detection": leak_detection,
            "phase": phase,
            "degassing": degassing,
            "flange": flange,
            "balls_type": balls_type,
            "suction_lift": suction_lift,
            "ball_size": ball_size,
            "suction_flange_size": suction_flange_size,
            "discharge_flange_size": discharge_flange_size,
            "food_graded_oil": food_graded_oil,
            "user_email": user_email,
            "spare_parts_kit": spare_parts_kit,
            "back_pressure_valve": back_pressure_valve,
            "pressure_relief_valve": pressure_relief_valve,
            "pulsation_dampener": pulsation_dampener,
            "calibration_column": calibration_column
        })

        # Find the best pump
        result = find_best_pump(
            customer_name, 
            gph, 
            None, 
            psi, 
            None, 
            hz, 
            simplex_duplex, 
            want_motor, 
            motor_type, 
            motor_power, 
            spm, 
            diaphragm, 
            liquid_end_material, 
            leak_detection, 
            phase, degassing, 
            flange, balls_type, 
            suction_lift, 
            ball_size, 
            suction_flange_size, 
            discharge_flange_size, 
            food_graded_oil, 
            spare_parts_kit,
            back_pressure_valve,
            pressure_relief_valve,
            pulsation_dampener,
            calibration_column
        )

        # Log the result
        print("Result:", result)

        # Generate PDF
        if "error" not in result:
            # Include additional details in the result for the PDF
            result["hz"] = hz
            result["diaphragm"] = diaphragm
            result["psi"] = psi
            result["degassing"] = degassing
            result["flange"] = flange
            result["balls_type"] = balls_type
            result["suction_lift"] = suction_lift
            result["ball_size"] = ball_size
            pdf_filename = generate_pdf(result)
            result["pdf_url"] = f"/download_pdf/{pdf_filename}"

            # # Send the PDF via email
            # email_subject = "Your Pump Quote"
            # email_body = "Please find attached the pump quote."
            # to_emails = [user_email, "quotes@acuflow.com"]
            # if send_email(to_emails, email_subject, email_body, pdf_filename):
            #     result["email_status"] = "Email sent successfully"
            # else:
            #     result["email_status"] = "Failed to send email"

        return jsonify(result)

    except Exception as e:
        print(f"Error in /get_pump: {str(e)}")
        return jsonify({"error": str(e)}), 500

@app.route('/download_pdf/<filename>', methods=['GET'])
def download_pdf(filename):
    try:
        return send_file(filename, as_attachment=True)
    except FileNotFoundError:
        return jsonify({"error": "PDF not found"}), 404

@app.route('/test_db')
def test_db():
    try:
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor()
        cursor.execute("SELECT 1")
        result = cursor.fetchone()
        cursor.close()
        conn.close()
        return jsonify({"status": "success", "message": "Database connection successful!"})
    except Exception as e:
        return jsonify({"status": "error", "message": str(e)}), 500

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)