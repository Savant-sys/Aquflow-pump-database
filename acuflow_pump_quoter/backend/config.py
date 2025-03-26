import os

class Config:
    # Database Configuration
    DB_CONFIG = {
        "host": "localhost",
        "user": "root",
        "password": "1234",
        "database": "Local_Pump_Info"
    }
    
    # Email Configuration
    SMTP_SERVER = 'smtp.bizmail.yahoo.com'
    SMTP_PORT = 465
    EMAIL_ADDRESS = 'quotes@acuflow.com'
    EMAIL_PASSWORD = 'xfvdcfnkfriprpol'
    
    # File Paths
    LOGO_PATH = os.path.join('static', 'logo.png')
    PDF_OUTPUT_DIR = 'generated_pdfs'
    
    @staticmethod
    def ensure_directories_exist():
        os.makedirs(Config.PDF_OUTPUT_DIR, exist_ok=True)