import mysql.connector
from config import Config

class PumpModel:
    @staticmethod
    def get_db_connection():
        return mysql.connector.connect(**Config.DB_CONFIG)
    
    @staticmethod
    def get_all_pumps():
        conn = PumpModel.get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM pumps")
        pumps = cursor.fetchall()
        cursor.close()
        conn.close()
        return pumps
    
    @staticmethod
    def get_pump_by_model(model):
        conn = PumpModel.get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("SELECT * FROM pumps WHERE Model = %s", (model,))
        pump = cursor.fetchone()
        cursor.close()
        conn.close()
        return pump
    
    @staticmethod
    def get_accessory_prices(model):
        conn = PumpModel.get_db_connection()
        cursor = conn.cursor(dictionary=True)
        cursor.execute("""
            SELECT Back_Pressure_Valve_150, Back_Pressure_Valve_750, 
                   Pressure_Relief_Valve_150, Pressure_Relief_Valve_750,
                   Pulsation_Dampener, Connection_Size, Port
            FROM pumps WHERE Model = %s
        """, (model,))
        data = cursor.fetchone()
        cursor.close()
        conn.close()
        return data