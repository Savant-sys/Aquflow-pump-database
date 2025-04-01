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
import threading
import time

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
    total_price = (suction_price + discharge_price + suction_price_all + discharge_price_all) * (5 if simplex_duplex == "Simplex" else 10)
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
    if ball_size == "Standard":
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
    Only add the price if suction_lift is "Yes".
    """
    if suction_lift != "Yes":
        return 0  # Do not add suction lift price if customer selects "No"

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
                   calibration_column=None, pressure_gauge=None, ecca=None, vfd=None, relay_option=None):
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

    # Ensure want_motor is provided and is either "Yes" or "No"
    if want_motor not in ["Yes", "No"]:
        return {"error": "Want motor is required and must be either 'Yes' or 'No'."}

    # If motor is required, ensure motor_type (TEFC/XPFC) and motor_power (AC/DC) are provided
    if want_motor == "Yes" and (motor_type is None or motor_power is None):
        return {"error": "Motor type (TEFC/XPFC) and motor power (AC/DC) must be provided when selecting a motor."}

    # Ensure SPM is provided and is one of the valid options
    valid_spm_options = [29, 44, 58, 88, 97, 117, 140, 170, 191]
    if spm is None or spm not in valid_spm_options:
        return {"error": "SPM is required and must be one of the following: 29, 44, 58, 88, 97, 117, 140, 170, 191."}

    # Ensure diaphragm is provided and is one of the valid options
    valid_diaphragm_options = ["PTFE", "Viton", "Hypalon", "EPDM"]
    if diaphragm is None or diaphragm not in valid_diaphragm_options:
        return {"error": "Diaphragm is required and must be one of the following: PTFE, Viton, Hypalon, EPDM."}

    # Ensure liquid end material is provided and is one of the valid options
    valid_liquid_end_material = ["316SS", "Alloy 20", "Hast. C", "PVC", "PVDF"]
    if liquid_end_material is None or liquid_end_material not in valid_liquid_end_material:
        return {"error": "Liquid End Material is required and must be one of the following: 316SS, Alloy 20, Hast. C, PVC, PVDF."}

    # Ensure leak detection is provided and is one of the valid options
    valid_leak_detection_options = ["No", "Conductive", "Vacuum"]
    if leak_detection is None or leak_detection not in valid_leak_detection_options:
        return {"error": "Leak Detection is required and must be one of the following: No, Conductive, Vacuum."}

    # Ensure phase is provided and is one of the valid options
    valid_phase_options = ["1 Ph", "3 Ph"]
    if phase is None or phase not in valid_phase_options:
        return {"error": "Phase is required and must be one of the following: 1 Ph, 3 Ph."}

    # Ensure degassing is provided and is either "Yes" or "No"
    if degassing not in ["Yes", "No"]:
        return {"error": "Degassing is required and must be either 'Yes' or 'No'."}

    # Ensure flange is provided and is either "Yes" or "No"
    if flange not in ["Yes", "No"]:
        return {"error": "Flange is required and must be either 'Yes' or 'No'."}

    # Ensure balls type is provided and is one of the valid options
    valid_balls_type_options = ["Std.", "Tungsten", "Ceramic"]
    if balls_type is None or balls_type not in valid_balls_type_options:
        return {"error": "Balls Type is required and must be one of the following: Std., Tungsten, Ceramic."}

    # Ensure suction_lift is provided and is either "Yes" or "No"
    if suction_lift not in ["Yes", "No"]:
        return {"error": "Suction Lift is required and must be either 'Yes' or 'No'."}

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
    if flange and flange == "Yes":
        print(f"Suction Flange Size: {suction_flange_size}")
        print(f"Discharge Flange Size: {discharge_flange_size}")
        if not suction_flange_size or not discharge_flange_size:
            return {"error": "Suction and Discharge flange sizes are required when selecting flanges."}
    else:
        # If flange is "No", ignore flange sizes
        suction_flange_size = None
        discharge_flange_size = None

    # Ensure Food_Graded_Oil is provided and is either "Yes" or "No"
    if food_graded_oil not in ["Yes", "No"]:
        return {"error": "Food Graded Oil is required and must be either 'Yes' or 'No'."}

    # Connect to MySQL database
    conn = mysql.connector.connect(**db_config)
    cursor = conn.cursor(dictionary=True)
    query = "SELECT *, Spare_Parts_Kit_Model, ECCA_Price, VFD_Price FROM pumps"
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

        if diaphragm == "PTFE":
            if leak_detection == "No":
                final_model = final_model[:3] + "T" + final_model[4:]
            elif leak_detection== "Conductive":
                final_model = final_model[:3] + "W" + final_model[4:]
            elif leak_detection == "Vacuum":
                final_model = final_model[:3] + "K" + final_model[4:]
        elif diaphragm == "Viton":
            if leak_detection == "No":
                final_model = final_model[:3] + "B" + final_model[4:]
            elif leak_detection == "Conductive":
                final_model = final_model[:3] + "R" + final_model[4:]
        elif diaphragm == "Hypalon":
            if leak_detection == "No":
                final_model = final_model[:3] + "A" + final_model[4:]
            elif leak_detection == "Conductive":
                final_model = final_model[:3] + "M" + final_model[4:]
        elif diaphragm == "EPDM":
            if leak_detection == "No":
                final_model = final_model[:3] + "C" + final_model[4:]

        # Replace the last letter based on ball_size (if not "Standard")
        final_model = replace_last_letter(final_model, ball_size)
        
        if flange == "Yes":
            final_model += "F"

        if degassing == "Yes":
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
        if simplex_duplex != "Both" and pump["Simplex_Duplex"] != simplex_duplex:
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
        calibration_column_info = pump.get("Calibration_Column_Info", "")
        pressure_gauge_price_value = float(pump["Pressure_Gauge"])
        pressure_gauge_info = pump.get("Pressure_Gauge_Info", "")
        
        # Determine correct motor price column
        if want_motor == "Yes":
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
        if diaphragm == "Viton":
            viton_price = pump["Viton"]
            if viton_price is None or float(viton_price) == 0:
                continue  # Skip this pump if Viton price is 0 or None
            diaphragm_price = float(viton_price)
        elif diaphragm == "Hypalon":
            hypalon_price = pump["Hypalon"]
            if hypalon_price is None or float(hypalon_price) == 0:
                continue  # Skip this pump if Hypalon price is 0 or None
            diaphragm_price = float(hypalon_price)
        elif diaphragm == "EPDM":
            epdm_price = pump["EPDM"]
            if epdm_price is None or float(epdm_price) == 0:
                continue  # Skip this pump if EPDM price is 0 or None
            diaphragm_price = float(epdm_price)
        elif diaphragm != "PTFE":
            continue

        # Determine leak detection price
        if leak_detection == "Conductive":
            leak_detection_price = float(pump["Conductive_Leak_Detection_Price_Adder"]) if pump["Conductive_Leak_Detection_Price_Adder"] is not None else 0
            if relay_option == "Yes":
                leak_detection_price += 889  # Add relay price if selected
        elif leak_detection == "Vacuum":
            leak_detection_price = float(pump["Vacuum_Leak_Detection_Price_Adder"]) if pump["Vacuum_Leak_Detection_Price_Adder"] is not None else 0
        else:
            leak_detection_price = 0

        # Calculate Food Graded Oil price
        food_graded_oil_price = 0
        if food_graded_oil == "Yes":
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
        if degassing == "Yes":
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
            "Spare_Parts_Kit_Model": pump.get("Spare_Parts_Kit_Model", "Spare Parts Kit"),
            "spare_parts_kit_price_value": spare_parts_kit_price_value,
            "spare_parts_kit_info": spare_parts_kit_info,
            "calibration_column_price_value": calibration_column_price_value,
            "calibration_column_info": calibration_column_info,
            "pressure_gauge_price_value": pressure_gauge_price_value,
            "pressure_gauge_info": pressure_gauge_info,
            "OG_Model": pump["Model"],
            "ECCA_Price": pump.get("ECCA_Price", 0),
            "VFD_Price": pump.get("VFD_Price", 0),
            "ecca_price": int(math.ceil(float(pump.get("ECCA_Price", 0)))) if pump.get("ECCA_Price") not in [None, 0, "0"] else 0,
            "vfd_price": int(math.ceil(float(pump.get("VFD_Price", 0)))) if pump.get("VFD_Price") not in [None, 0, "0"] else 0,
            "relay_option": relay_option if leak_detection == "Conductive" else "N/A",
            "relay_price": 889 if leak_detection == "Conductive" and relay_option == "Yes" else 0,
            "leak_detection": leak_detection,  # Add this line to include the leak detection type
            "leak_detection_price": leak_detection_price,  # Make sure this is set
            "relay_option": relay_option if leak_detection == "Conductive" else "No",  # Add relay option info
        })

    if filtered_pumps:
        filtered_pumps.sort(key=lambda x: (
            float('inf') if isinstance(x["total_price"], str) else x["total_price"],
            x["gph"],
            x["max_spm"],
            x["psi"]
        ))

        best_pump = filtered_pumps[0]
        
        # Add leak detection prices to best_pump dictionary
        # Get these values from the original pump data that matched
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT Conductive_Leak_Detection_Price_Adder, Vacuum_Leak_Detection_Price_Adder FROM pumps WHERE Model = %s", (best_pump["OG_Model"],))
        leak_detection_data = cursor.fetchone()
        cursor.close()
        conn.close()

        if leak_detection_data:
            best_pump["Conductive_Leak_Detection_Price_Adder"] = float(leak_detection_data["Conductive_Leak_Detection_Price_Adder"]) if leak_detection_data["Conductive_Leak_Detection_Price_Adder"] not in [None, "0", 0] else 0
            best_pump["Vacuum_Leak_Detection_Price_Adder"] = float(leak_detection_data["Vacuum_Leak_Detection_Price_Adder"]) if leak_detection_data["Vacuum_Leak_Detection_Price_Adder"] not in [None, "0", 0] else 0
        else:
            best_pump["Conductive_Leak_Detection_Price_Adder"] = 0
            best_pump["Vacuum_Leak_Detection_Price_Adder"] = 0

        # Initialize optional accessories total price
        optional_accessories_total_price = 0
        optional_accessories_notes = []

        optional_accessories_total_price += leak_detection_price
 
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
            best_pump["base_price"] = "C/F"

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
            if back_pressure_valve == "Yes":
                optional_accessories_notes.append("C/F (Back Pressure Valve)")
        else:
            best_pump["back_pressure_valve_price"] = math.ceil(float(selected_bp_price))
            best_pump["back_pressure_valve_message"] = (
                f"Back Pressure Valve in {liquid_end_material} with {connection_size if connection_size != 'N/A' else 'N/A'}. Max Pressure is {psi} PSI."
            )
            if back_pressure_valve == "Yes":
                optional_accessories_total_price += best_pump["back_pressure_valve_price"]

        # --- Pressure Relief Valve ---
        conn = mysql.connector.connect(**db_config)
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT Pressure_Relief_Valve_150, Pressure_Relief_Valve_750, Connection_Size, Port FROM pumps WHERE Model = %s", (best_pump["OG_Model"],))
        pr_data = cursor.fetchone()
        cursor.close()
        conn.close()

        selected_pr_price = None
        if pr_data:
            connection_size = pr_data.get("Connection_Size")
            port = pr_data.get("Port")

            if psi <= 150:
                selected_pr_price = pr_data.get("Pressure_Relief_Valve_150")
            elif psi <= 750:
                selected_pr_price = pr_data.get("Pressure_Relief_Valve_750")

            if selected_pr_price in [None, 0, "0", "C/F"]:
                best_pump["pressure_relief_valve_price"] = "C/F"
                best_pump["pressure_relief_valve_message"] = "C/F (Pressure Relief Valve)"
                if pressure_relief_valve == "Yes":
                    optional_accessories_notes.append("C/F (Pressure Relief Valve)")
            else:
                best_pump["pressure_relief_valve_price"] = math.ceil(float(selected_pr_price))
                message = f"{port} Pressure Relief Valve in {liquid_end_material} with {connection_size}. Max pressure is {psi} PSI."
                
                # Split the message into two lines if it's too long
                if len(message) > 90:  # Changed from 60 to 90
                    mid_point = len(message) // 2
                    # Look for the nearest space or period before the midpoint
                    split_chars = [' ', '.']
                    split_point = -1
                    for char in split_chars:
                        pos = message.rfind(char, 0, mid_point)
                        if pos > split_point:
                            split_point = pos
                    if split_point > 0:
                        message = message[:split_point] + '\n' + message[split_point:].lstrip()
                
                best_pump["pressure_relief_valve_message"] = message
                if pressure_relief_valve == "Yes":
                    optional_accessories_total_price += best_pump["pressure_relief_valve_price"]
        else:
            best_pump["pressure_relief_valve_price"] = "C/F"
            best_pump["pressure_relief_valve_message"] = "C/F (Pressure Relief Valve)"
            if pressure_relief_valve == "Yes":
                optional_accessories_notes.append("C/F (Pressure Relief Valve)")

        # --- Pulsation Dampener ---
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
            if pulsation_dampener == "Yes":
                optional_accessories_notes.append("C/F (Pulsation Dampener)")
        else:
            best_pump["pulsation_dampener_price"] = math.ceil(float(pd_price))
            best_pump["pulsation_dampener_message"] = (
                f"Pulsation Dampener in {liquid_end_material} with a Viton bladder and max pressure of {psi} PSI."
            )
            if pulsation_dampener == "Yes":
                optional_accessories_total_price += best_pump["pulsation_dampener_price"]

        # --- Calibration Column ---
        if calibration_column == "Yes":
            best_pump["calibration_column_price"] = math.ceil(best_pump["calibration_column_price_value"])
            optional_accessories_total_price += best_pump["calibration_column_price"]
        else:
            best_pump["calibration_column_price"] = 0

        # --- Pressure Gauge ---
        if pressure_gauge == "Yes":
            if best_pump["pressure_gauge_price_value"] == 0:
                best_pump["pressure_gauge_price"] = "C/F"
                optional_accessories_notes.append("C/F (Pressure Gauge)")
            else:
                best_pump["pressure_gauge_price"] = math.ceil(best_pump["pressure_gauge_price_value"])
                optional_accessories_total_price += best_pump["pressure_gauge_price"]
        else:
            best_pump["pressure_gauge_price"] = 0

        # Handle ECCA price
        if ecca == "Yes":
            ecca_price = float(best_pump.get("ECCA_Price", 0))
            if ecca_price > 0:
                ecca_price = int(math.ceil(ecca_price))
                optional_accessories_total_price += ecca_price
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${ecca_price}"
                else:
                    best_pump["total_price"] += ecca_price
                print(f"Adding ECCA price: ${ecca_price}")

        # Handle VFD price
        if vfd == "Yes":
            vfd_price = float(best_pump.get("VFD_Price", 0))
            if vfd_price > 0:
                vfd_price = int(math.ceil(vfd_price))
                optional_accessories_total_price += vfd_price
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${vfd_price}"
                else:
                    best_pump["total_price"] += vfd_price
                print(f"Adding VFD price: ${vfd_price}")

        # Update the final total price
        if isinstance(best_pump["base_price"], (int, float)):
            final_total = best_pump["base_price"] + optional_accessories_total_price
            best_pump["final_total_price"] = f"${final_total}"
        
        # Save the optional accessories total
        best_pump["optional_accessories_total_price"] = optional_accessories_total_price

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
            final_price = f"${best_pump["base_price"] + optional_accessories_total_price}"
            if all_cf_notes:
                best_pump["final_total_price"] = f"${final_price} + {' + '.join(all_cf_notes)}"
            else:
                best_pump["final_total_price"] = f"${final_price}"
        else:
            price_str = f"{best_pump['base_price']}" if isinstance(best_pump["base_price"], str) else f"${best_pump['base_price']}"
            if all_cf_notes:
                best_pump["final_total_price"] = f"${price_str} + {' + '.join(all_cf_notes)}"
            else:
                best_pump["final_total_price"] = f"${price_str}"

        # Final Total Price (Base + Optional Accessories)
        if isinstance(best_pump["base_price"], (int, float)) and isinstance(best_pump["optional_accessories_total_price"], (int, float)):
            best_pump["final_total_price"] = f"${best_pump["base_price"] + optional_accessories_total_price}"
        else:
            # Handle C/F notes
            price_str = f"${best_pump['base_price']}" if isinstance(best_pump["base_price"], (int, float)) else str(best_pump["base_price"])
            cf_notes = [note for note in best_pump["optional_accessories_notes"] if "C/F" in note]
            if cf_notes:
                best_pump["final_total_price"] = f"{price_str} + {' + '.join(cf_notes)}"
            else:
                best_pump["final_total_price"] = f"${price_str}"

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

        if pressure_gauge == "Yes":
            if best_pump["pressure_gauge_price"] == "C/F":
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Pressure Gauge)"
                else:
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Pressure Gauge)"
            elif best_pump["pressure_gauge_price"] > 0:
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${best_pump['pressure_gauge_price']}"
                else:
                    best_pump["total_price"] += best_pump["pressure_gauge_price"]

        # Add flange price AFTER choosing the cheapest pump
        flange_price = 0
        flange_message = None
        if flange and flange == "Yes":
            flange_price_result = calculate_flange_price(psi, suction_flange_size, discharge_flange_size, liquid_end_material)
            if "error" in flange_price_result:
                return flange_price_result  # Return error if any

            flange_price = flange_price_result["total_flange_price"]
            if isinstance(flange_price, str):  # Handle "C/F" cases
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + {flange_price}"
                else:
                    best_pump["total_price"] = f"{best_pump['total_price']} + {flange_price}"
            else:
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${flange_price}"
                else:
                    best_pump["total_price"] += flange_price


        # Add suction lift price AFTER choosing the cheapest pump
        suction_lift_price = 0
        suction_lift_message = None
        if suction_lift == "Yes":
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
        if flange and flange == "Yes":
            flange_adaptor_price_result = calculate_flange_adaptor_price(psi, suction_flange_size, discharge_flange_size, liquid_end_material, simplex_duplex)
            if "error" in flange_adaptor_price_result:
                return flange_adaptor_price_result

            flange_adaptor_price = flange_adaptor_price_result["total_flange_adaptor_price"]
            if isinstance(flange_adaptor_price, str):  # Handle "C/F" cases
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + {flange_adaptor_price}"
                else:
                    best_pump["total_price"] = f"{best_pump['total_price']} + {flange_adaptor_price}"
            else:
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${flange_adaptor_price}"
                else:
                    best_pump["total_price"] += flange_adaptor_price
        else:
            # If flange is "No", set flange_adaptor_price to 0
            flange_adaptor_price = 0

        # Add flange adaptor details to the best pump
        best_pump["flange_adaptor_price"] = flange_adaptor_price

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
        best_pump["pressure_relief_valve"] = pressure_relief_valve
        best_pump["pulsation_dampener"] = pulsation_dampener

        if pressure_gauge == "Yes":
            if best_pump["pressure_gauge_price"] == "C/F":
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Pressure Gauge)"
                else:
                    best_pump["total_price"] = f"{best_pump['total_price']} + C/F (Pressure Gauge)"
            elif isinstance(best_pump["pressure_gauge_price"], (int, float)):
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${best_pump['pressure_gauge_price']}"
                else:
                    best_pump["total_price"] += best_pump["pressure_gauge_price"]

        best_pump["pressure_gauge"] = pressure_gauge

        if ecca == "Yes":
            if isinstance(best_pump["ecca_price"], (int, float)):
                optional_accessories_total_price += best_pump["ecca_price"]
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${best_pump['ecca_price']}"
                else:
                    best_pump["total_price"] += best_pump["ecca_price"]
                optional_accessories_notes.append("C/F (ECCA)")
            elif isinstance(best_pump["ecca_price"], (int, float)):
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${best_pump['ecca_price']}"
                else:
                    best_pump["total_price"] += best_pump["ecca_price"]
                optional_accessories_total_price += best_pump["ecca_price"]

        if vfd == "Yes":
            if isinstance(best_pump["vfd_price"], (int, float)):
                optional_accessories_total_price += best_pump["vfd_price"]
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${best_pump['vfd_price']}"
                else:
                    best_pump["total_price"] += best_pump["vfd_price"]
                optional_accessories_notes.append("C/F (VFD)")
            elif isinstance(best_pump["vfd_price"], (int, float)):
                if isinstance(best_pump["total_price"], str):
                    best_pump["total_price"] = f"{best_pump['total_price']} + ${best_pump['vfd_price']}"
                else:
                    best_pump["total_price"] += best_pump["vfd_price"]
                optional_accessories_total_price += best_pump["vfd_price"]

        best_pump["ecca"] = ecca
        best_pump["vfd"] = vfd

        # Update price calculations to use int() to remove decimals
        if isinstance(best_pump["total_price"], (int, float)):
            best_pump["total_price"] = int(math.ceil(best_pump["total_price"]))

        if isinstance(best_pump["base_price"], (int, float)):
            best_pump["base_price"] = int(math.ceil(best_pump["base_price"]))

        if isinstance(best_pump["optional_accessories_total_price"], (int, float)):
            best_pump["optional_accessories_total_price"] = int(math.ceil(best_pump["optional_accessories_total_price"]))

        # Update individual accessory prices
        for accessory in ["spare_parts_kit_price", "back_pressure_valve_price", 
                         "pressure_relief_valve_price", "pulsation_dampener_price",
                         "calibration_column_price", "pressure_gauge_price",
                         "ecca_price", "vfd_price"]:
            if isinstance(best_pump.get(accessory), (int, float)) and best_pump[accessory] != 0:
                best_pump[accessory] = int(math.ceil(best_pump[accessory]))

        # Format final total price
        if isinstance(best_pump["base_price"], (int, float)) and isinstance(optional_accessories_total_price, (int, float)):
            final_total = int(math.ceil(best_pump["base_price"] + optional_accessories_total_price))
            best_pump["final_total_price"] = f"${final_total}"

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
    doc = SimpleDocTemplate(filename, pagesize=letter)
    elements = []

    styles = getSampleStyleSheet()
    title_style = ParagraphStyle(
        name="CenteredTitle",
        parent=styles["Heading2"],
        fontSize=12,
        alignment=1,
        spaceAfter=4,
    )
    heading_style = ParagraphStyle(
        name="SmallHeading",
        parent=styles["Heading3"],
        fontSize=10,
        spaceAfter=4,
    )
    normal_style = ParagraphStyle(
        name="SmallBody",
        parent=styles["BodyText"],
        fontSize=8,
        leading=10
    )
    footer_style = ParagraphStyle(
        name="FooterStyle",
        parent=normal_style,
        fontSize=7,
        textColor=colors.grey,
        leading=10,
        spaceBefore=10,
    )

    # Generate Auto Date & Quote Number
    today = datetime.today()
    quote_number = f"AQQ{today.strftime('%y%m%d')}__"
    formatted_date = today.strftime('%d-%b-%y')

    # Create header elements
    logo_path = "logo.png"
    address = """<b><font size="9">Acuflow-Div. of Precision</font></b><br/>
    <b><font size="9">Flow Technologies Inc.</font></b><br/>
    <font size="8">1642 McGaw Ave.<br/>
    Irvine, CA 92614<br/>
    Ph: (949) 757-1753</font>"""

    if os.path.exists(logo_path):
        logo = Image(logo_path, width=80, height=40)

        # Add Quote Form ID at top right
        quote_form_text = Paragraph("<font size='7'>Quote Form 2311</font>", normal_style)

        # Create customer table with minimal spacing
        customer_name = pump_data.get("customer_name", "N/A")
        customer_table = Table([
            ["Customer"],
            [customer_name]
        ], colWidths=[215], rowHeights=[15, 15])

        # Style the customer table
        customer_table.setStyle(TableStyle([
            ("BACKGROUND", (0, 0), (-1, 0), colors.grey),
            ("TEXTCOLOR", (0, 0), (-1, 0), colors.whitesmoke),
            ("ALIGN", (0, 0), (-1, -1), "CENTER"),
            ("VALIGN", (0, 0), (-1, -1), "MIDDLE"),
            ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
            ("FONTSIZE", (0, 0), (-1, -1), 8),
            ("BOTTOMPADDING", (0, 0), (-1, 0), 1),
            ("TOPPADDING", (0, 1), (-1, 1), 2),
            ("GRID", (0, 0), (-1, -1), 1, colors.black)
        ]))

        # Create Quote # and Date table
        quote_date_table = Table([
            ["Quote #", "Date"],
            [quote_number, formatted_date]
        ], colWidths=[80, 80], rowHeights=[15, 15])

        quote_date_table.setStyle(TableStyle([
            ("BACKGROUND", (0, 0), (-1, 0), colors.grey),
            ("TEXTCOLOR", (0, 0), (-1, 0), colors.whitesmoke),
            ("ALIGN", (0, 0), (-1, -1), "CENTER"),
            ("VALIGN", (0, 0), (-1, -1), "MIDDLE"),
            ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
            ("FONTSIZE", (0, 0), (-1, -1), 8),
            ("BOTTOMPADDING", (0, 0), (-1, 0), 1),
            ("GRID", (0, 0), (-1, -1), 1, colors.black)
        ]))

        # Create header table with adjusted layout
        header_table = Table([
            [logo, Paragraph(address, normal_style), quote_form_text],
            [None, None, quote_date_table],  # Moved quote_date_table up, removed empty spacing row
            [customer_table, None, None]      # Customer table in last row
        ], colWidths=[100, 250, 160], rowHeights=[40, 20, 30])  # Adjusted heights

        header_table.setStyle(TableStyle([
            ("VALIGN", (0, 0), (-1, -1), "TOP"),
            ("ALIGN", (0, 0), (0, 0), "LEFT"),
            ("ALIGN", (1, 0), (1, 0), "LEFT"),
            ("ALIGN", (2, 0), (2, 0), "RIGHT"),
            ("SPAN", (1, 0), (1, 1)),  # Span address across two rows
            ("LEFTPADDING", (0, 0), (-1, -1), 0),
            ("RIGHTPADDING", (0, 0), (-1, -1), 0),
            ("TOPPADDING", (0, 0), (-1, -1), 0),
            ("BOTTOMPADDING", (0, 0), (-1, -1), 0),
        ]))

        elements.append(header_table)
        elements.append(Spacer(1, 5))

    # Pump Model Name
    pump_model = pump_data.get("model", "N/A")
    elements.append(Paragraph(f"<b>Pump Model:</b> {pump_model}", title_style))

    # Description Section
    elements.append(Paragraph("<b>Description:</b>", heading_style))

    # Dynamic Description
    dynamic_description = []
    ball_type = pump_data.get("balls_type", "N/A")
    diaphragm = pump_data.get("diaphragm", "N/A")
    suction_lift_text = "High Suction Lift " if pump_data.get("suction_lift", "") == "Yes" else ""

    if pump_data.get("flange", "") == "Yes":
        psi = pump_data.get("psi", 0)
        flange_size_id = get_flange_size_id(psi)

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

    if pump_data.get("want_motor", "") == "Yes":
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
            phase = ""

        motor_hp = pump_data.get("Motor_HP_AC", "N/A")
        description += f" The pump comes with a {motor_hp} HP, {input_voltage}, {phase} {pump_data.get('motor_type', 'N/A')} motor."

    additional_features = []
    if pump_data.get("degassing", "") == "Yes":
        additional_features.append("degassing valve")
    if pump_data.get("food_graded_oil", "") == "Yes":
        additional_features.append("food-graded oil")
    if pump_data.get("suction_lift", "") == "Yes":
        additional_features.append("suction lift")

    if additional_features:
        description += " The pump also includes the following features: " + ", ".join(additional_features) + "."

    # Add the combined description to the PDF
    elements.append(Paragraph(description, normal_style))
    elements.append(Spacer(1, 8))

    # Optional Accessories Table
    elements.append(Paragraph("<b>All Optional Accessories:</b>", heading_style))
    elements.append(Spacer(1, 4))

    # Define descriptions for each accessory
    liquid_end_material = pump_data.get("liquid_end_material", "N/A")
    connection_size = pump_data.get("connection_size", "N/A")
    port = pump_data.get("port", "N/A")
    psi = pump_data.get("psi", "N/A")

    # Update the split_long_description function to be more precise
    def split_long_description(description, max_length=72):
        if not description:
            return description
            
        words = description.split()
        lines = []
        current_line = []
        current_length = 0

        for word in words:
            word_length = len(word)
            if current_length + word_length + 1 <= max_length:
                current_line.append(word)
                current_length += word_length + 1
            else:
                lines.append(' '.join(current_line))
                current_line = [word]
                current_length = word_length + 1

        if current_line:
            lines.append(' '.join(current_line))

        return '\n'.join(lines)

    # Get and split all accessory descriptions
    spare_parts_info = split_long_description(pump_data.get('spare_parts_kit_info', 'Not included'))

    back_pressure_desc = split_long_description(
        f"Back Pressure Valve in {liquid_end_material} with "
        f"{pump_data.get('back_pressure_valve_message', '').split('with ')[-1].split('.')[0]}. "
        f"Max pressure is {psi} PSI."
    )

    pressure_relief_desc = split_long_description(pump_data.get("pressure_relief_valve_message", "Not included"))

    pulsation_dampener_desc = split_long_description(
        f"Pulsation Dampener in {liquid_end_material} with a Viton bladder "
        f"and Max Pressure of {psi} PSI."
    )

    calibration_column_desc = split_long_description(
        f"Calibration Column {pump_data.get('calibration_column_info', '')}."
    )

    pressure_gauge_desc = split_long_description(
        f"{pump_data.get('pressure_gauge_info', '')}"
    )

    accessory_descriptions = {
        pump_data.get("Spare_Parts_Kit_Model", "Spare Parts Kit"): spare_parts_info,
        "Back Pressure Valve": back_pressure_desc,
        "Pressure Relief Valve": pressure_relief_desc,
        "Pulsation Dampener": pulsation_dampener_desc,
        "Calibration Column": calibration_column_desc,
        "Pressure Gauge": pressure_gauge_desc,
        "ECCA": "Electronic Capacity Control Actuator",
        "VFD": "Variable Frequency Drive",
        "Conductive Leak Detection": "Conductive Leak Detection Only. (No Relay Included.)",
        "Relay": "Relay for Conductive Leak Detection System",
        "Vacuum Leak Detection": "Vacuum Leak Detection"
    }

    all_accessories = [
        (pump_data.get("Spare_Parts_Kit_Model", "Spare Parts Kit"), pump_data.get("spare_parts_kit_price_value", 0)),
        ("Back Pressure Valve", pump_data.get("back_pressure_valve_price", 0)),
        ("Pressure Relief Valve", pump_data.get("pressure_relief_valve_price", 0)),
        ("Pulsation Dampener", pump_data.get("pulsation_dampener_price", 0)),
        ("Calibration Column", pump_data.get("calibration_column_price_value", 0)),
        ("Pressure Gauge", pump_data.get("pressure_gauge_price_value", 0)),
        ("ECCA", int(math.ceil(float(pump_data.get("ECCA_Price", 0)))) if pump_data.get("ECCA_Price") not in [None, 0, "0"] else 0),
        ("VFD", int(math.ceil(float(pump_data.get("VFD_Price", 0)))) if pump_data.get("VFD_Price") not in [None, 0, "0"] else 0),
        ("Conductive Leak Detection", pump_data.get("Conductive_Leak_Detection_Price_Adder")),
        ("Relay", 889),
        ("Vacuum Leak Detection", pump_data.get("Vacuum_Leak_Detection_Price_Adder"))
    ]

    accessories_table_data = [["Accessory", "Description", "Price"]]
    for name, price in all_accessories:
        # Round up the price and remove decimal .0
        if isinstance(price, (int, float)) and price not in [0, None]:
            price_display = f"${int(math.ceil(price))}"  # Convert to int to remove decimal
        else:
            price_display = "C/F" if price in [None, 0, "0", "C/F"] else f"${price}"
        description = accessory_descriptions.get(name, "")
        num_lines = len(description.split('\n')) if description else 1
        row_height = max(20, num_lines * 12)
        accessories_table_data.append([name, description, price_display])

    accessories_table = Table(
        accessories_table_data,
        colWidths=[100, 300, 80],
        rowHeights=[20] + [None] * (len(accessories_table_data) - 1)  # Auto-height for content rows
    )
    
    # Update table style to handle multiline content better
    accessories_table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.lightgrey),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.black),
        ("ALIGN", (0, 0), (-1, -1), "CENTER"),
        ("VALIGN", (0, 0), (-1, -1), "MIDDLE"),
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
        ("FONTSIZE", (0, 0), (-1, -1), 8),
        ("BOTTOMPADDING", (0, 0), (-1, 0), 2),
        ("TOPPADDING", (0, 1), (-1, -1), 4),
        ("BOTTOMPADDING", (0, 1), (-1, -1), 4),
        ("GRID", (0, 0), (-1, -1), 0.5, colors.black),
        ("WORDWRAP", (0, 0), (-1, -1), True)
    ]))
    elements.append(accessories_table)
    elements.append(Spacer(1, 12))

    # Price Summary
    base_price = pump_data.get("base_price", "N/A")
    optional_price = pump_data.get("optional_accessories_total_price", 0)
    optional_notes = pump_data.get("optional_accessories_notes", [])
    final_price = pump_data.get("final_total_price", "N/A")

    base_display = f"${int(base_price)}" if isinstance(base_price, (int, float)) else base_price
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

    optional_display = f"${int(optional_price)}" if isinstance(optional_price, (int, float)) else "N/A"
    optional_cf_notes = [note for note in optional_notes if "C/F" in note]
    optional_cf_combined = ""
    if optional_cf_notes:
        optional_cf_combined = f" + C/F ({' + '.join(note.replace('C/F (', '').replace(')', '') for note in optional_cf_notes)})"
    optional_display += optional_cf_combined

    price_table_data = [
        ["Base Pump Price", base_display],
        ["Optional Accessories", optional_display],
        ["Final Total Price", final_price]
    ]

    price_table = Table(price_table_data, colWidths=[150, 150])
    price_table.setStyle(TableStyle([
        ("BACKGROUND", (0, 0), (-1, 0), colors.lightgrey),
        ("TEXTCOLOR", (0, 0), (-1, 0), colors.black),
        ("ALIGN", (0, 0), (-1, -1), "CENTER"),
        ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
        ("BOTTOMPADDING", (0, 0), (-1, 0), 8),
        ("GRID", (0, 0), (-1, -1), 1, colors.black)
    ]))
    elements.append(price_table)
    elements.append(Spacer(1, 10))

    # Footer Notes
    elements.append(Paragraph("<b>Notes:</b>", footer_style))
    footer_notes = [
        "1. Your above pricing are Net prices based on Ex work Irvine, CA. Prices valid 30 days from quote date.",
        "2. If you decided to add ECCA or Leak detection system, the pump model number will change.",
        f"3. Estimated lead time is {get_lead_time(pump_data.get('series', 'N/A'))} ARO, based on current inventory and scheduling.",
        "4. There will be price adder for Material Certificates, certificate of origin and Performance test.",
        "5. Anything not clearly stated in the quote above is deemed as not included in pricing, regardless of RFQ or Specs."
    ]
    footer_text = "<br/>".join(footer_notes)
    elements.append(Paragraph(footer_text, footer_style))

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

def delete_file_after_delay(filename, delay=30):
    """Delete the specified file after a delay in seconds."""
    def delete_file():
        time.sleep(delay)
        try:
            if os.path.exists(filename):
                os.remove(filename)
                print(f"✅ Deleted temporary file: {filename}")
        except Exception as e:
            print(f"Error deleting file {filename}: {e}")
    
    # Start deletion thread
    thread = threading.Thread(target=delete_file)
    thread.daemon = True  # Thread will exit when main program exits
    thread.start()

@app.route('/get_pump', methods=['GET'])
def get_pump():
    try:
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
        pressure_gauge = request.args.get('pressure_gauge', type=str)
        ecca = request.args.get('ecca', type=str)
        vfd = request.args.get('vfd', type=str)
        relay_option = request.args.get('relay_option', type=str)
        
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
            "calibration_column": calibration_column,
            "pressure_gauge": pressure_gauge,
            "ecca": ecca,
            "vfd": vfd,
            "relay_option": relay_option,
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
            calibration_column,
            pressure_gauge,
            ecca,
            vfd,
            relay_option
        )

        # Log the result
        print("Result:", result)

        # Generate PDF
        if "error" not in result:
            result["hz"] = hz
            result["diaphragm"] = diaphragm
            result["psi"] = psi
            result["degassing"] = degassing
            result["flange"] = flange
            result["balls_type"] = balls_type
            result["suction_lift"] = suction_lift
            result["ball_size"] = ball_size
            
            # Generate unique filename using timestamp
            timestamp = int(time.time())
            pdf_filename = f"pump_quote_{timestamp}.pdf" # IMPORTANT: This is where it needs to be changed to the actual filename by the txt file based on the day
            # CREATE TXT FILE FOR THAT AND MAKE SURE TO UPDATE THE TXT FILE WHEN THE DAY IS OVER
            # MAKE SURE TO UPDATE THE TXT FILE WHEN THE BUTTON "GET THE PDF" IS CLICKED
            # Generate the PDF
            pdf_filename = generate_pdf(result, pdf_filename)
            result["pdf_url"] = f"/download_pdf/{pdf_filename}"

            # if user_email:  # Only send if email is provided
            #     email_subject = "Your Pump Quote"
            #     email_body = "Please find attached the pump quote."
            #     to_emails = [user_email, "quotes@acuflow.com"]
            #     if send_email(to_emails, email_subject, email_body, pdf_filename):
            #         result["email_status"] = "Email sent successfully"
            #     else:
            #         result["email_status"] = "Failed to send email"
            # Schedule the PDF for deletion after 10 seconds
            delete_file_after_delay(pdf_filename)

            # Send email if provided
            

        return jsonify(result)

    except Exception as e:
        print(f"Error in /get_pump: {str(e)}")
        return jsonify({"error": str(e)}), 500

@app.route('/download_pdf/<filename>', methods=['GET'])
def download_pdf(filename):
    try:
        if os.path.exists(filename):
            return send_file(filename, as_attachment=True)
        else:
            return jsonify({
                "error": "PDF has expired. Please generate a new quote."
            }), 404
    except Exception as e:
        return jsonify({"error": str(e)}), 500

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