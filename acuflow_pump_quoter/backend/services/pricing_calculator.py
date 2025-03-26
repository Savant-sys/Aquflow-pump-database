from utils.constants import (
    flange_pricing_tables,
    flange_adaptor_pricing_tables,
    ball_size_mapping
)
import math

class PricingCalculator:
    @staticmethod
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
        return None
    
    @staticmethod
    def calculate_flange_price(psi, suction_flange_size, discharge_flange_size, liquid_end_material):
        flange_size_id = PricingCalculator.get_flange_size_id(psi)
        if flange_size_id is None:
            return {"error": "Invalid PSI value for flange size calculation"}
            
        if flange_size_id not in flange_pricing_tables:
            return {"error": f"Invalid flange size ID: {flange_size_id}"}
            
        if suction_flange_size not in flange_pricing_tables[flange_size_id]:
            return {"error": f"Invalid suction flange size: {suction_flange_size}"}
            
        if discharge_flange_size not in flange_pricing_tables[flange_size_id]:
            return {"error": f"Invalid discharge flange size: {discharge_flange_size}"}
            
        suction_price = flange_pricing_tables[flange_size_id][suction_flange_size][liquid_end_material]
        discharge_price = flange_pricing_tables[flange_size_id][discharge_flange_size][liquid_end_material]
        
        if suction_price == "C/F" or discharge_price == "C/F":
            return {"total_flange_price": "C/F (Flange)"}
            
        if suction_price == 0 or discharge_price == 0:
            return {"total_flange_price": "Unavailable (Flange)"}
            
        total_price = (suction_price * 1.6 + discharge_price * 1.6) * 3
        return {"total_flange_price": total_price}
    
    @staticmethod
    def calculate_flange_adaptor_price(psi, suction_flange_size, discharge_flange_size, liquid_end_material, simplex_duplex):
        if psi < 1000:
            table = flange_adaptor_pricing_tables["psi_lt_1000"]
        else:
            table = flange_adaptor_pricing_tables["psi_gt_1000"]
            
        suction_price = table.get(suction_flange_size, {}).get(liquid_end_material, 0)
        discharge_price = table.get(discharge_flange_size, {}).get(liquid_end_material, 0)
        
        suction_price_all = flange_adaptor_pricing_tables["all"].get(suction_flange_size, {}).get(liquid_end_material, 0)
        discharge_price_all = flange_adaptor_pricing_tables["all"].get(discharge_flange_size, {}).get(liquid_end_material, 0)
        
        if suction_price == "C/F" or discharge_price == "C/F" or suction_price_all == "C/F" or discharge_price_all == "C/F":
            return {"total_flange_adaptor_price": "C/F (Flange Adaptor)"}
            
        if suction_price == 0 or discharge_price == 0 or suction_price_all == 0 or discharge_price_all == 0:
            return {"total_flange_adaptor_price": "Unavailable (Flange Adaptor)"}
            
        total_price = (suction_price + discharge_price + suction_price_all + discharge_price_all) * (5 if simplex_duplex.lower() == "simplex" else 10)
        return {"total_flange_adaptor_price": total_price}
    
    @staticmethod
    def calculate_suction_lift_price(series, liquid_end_material, suction_lift):
        if suction_lift.lower() != "yes":
            return 0
            
        if series == "Series 1000":
            if liquid_end_material in ["316SS", "Alloy 20", "Hast. C", "PVC", "PVDF"]:
                return 844
        elif series == "Series 2000":
            if liquid_end_material == "316SS":
                return "C/F"
            elif liquid_end_material == "Alloy 20":
                return 2860
            elif liquid_end_material in ["Hast. C", "PVC", "PVDF"]:
                return "C/F"
        return 0
    
    @staticmethod
    def replace_last_letter(model, ball_size):
        if ball_size.lower() == "standard":
            return model
            
        replacement = ball_size_mapping.get(ball_size, "")
        if replacement:
            model = model[:-1] + replacement
        return model
    
    @staticmethod
    def replace_model_letters(model, liquid_end_material, balls_type):
        replacement_table = {
            "316SS": {"Std.": "04", "Ceramic": "74", "Tungsten": "84"},
            "Alloy 20": {"Std.": "05", "Ceramic": "75", "Tungsten": "85"},
            "Hast. C": {"Std.": "06", "Ceramic": "76", "Tungsten": "86"},
            "PVC": {"Std.": "08", "Ceramic": "08", "Tungsten": "88"},
            "PVDF": {"Std.": "0A", "Ceramic": "0A", "Tungsten": "8A"},
        }
        
        if "-" in model:
            parts = model.split("-")
            if len(parts) > 1:
                replacement = replacement_table.get(liquid_end_material, {}).get(balls_type, "00")
                parts[1] = replacement + parts[1][2:]
                model = "-".join(parts)
        return model