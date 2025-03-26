from models.pump_model import PumpModel
from services.pricing_calculator import PricingCalculator
from utils.validators import PumpValidator
from utils.constants import *

class PumpFinder:
    @staticmethod
    def find_best_pump(**params):
        # Validate input parameters
        validation_result = PumpValidator.validate_pump_parameters(params)
        if validation_result.get("error"):
            return validation_result
        
        # Get all pumps from database
        pumps = PumpModel.get_all_pumps()
        
        # Filter pumps based on criteria
        filtered_pumps = []
        for pump in pumps:
            if not PumpFinder._matches_criteria(pump, params):
                continue
            
            processed_pump = PumpFinder._process_pump(pump, params)
            if processed_pump:
                filtered_pumps.append(processed_pump)
        
        if filtered_pumps:
            return PumpFinder._select_best_pump(filtered_pumps, params)
        return {"error": "No suitable pump found for the given specifications."}
    
    @staticmethod
    def _matches_criteria(pump, params):
        # Check liquid end material
        if pump["Liquid_End_Material"] != params["liquid_end_material"]:
            return False
            
        # Check flow rate
        if params.get('gph') is not None:
            pump_flow = float(pump["GPH_60Hz"]) if params["hz"] == 60 else float(pump["GPH_50Hz"])
            if pump_flow is None or float(params["gph"]) > pump_flow:
                return False
                
        # Check pressure
        psi = float(params["psi"])
        max_pressure = float(pump["Max_Pressure_PSI"])
        high_pressure = float(pump["Max_Pressure_PSI_High_Pressure_Adder"])
        
        use_hp = psi > max_pressure
        if psi > max_pressure and (not high_pressure or psi > high_pressure):
            return False
            
        # Check SPM
        max_spm = float(pump["Max_SPM"]) if pump["Max_SPM"] is not None else 0
        if max_spm > int(params["spm"]):
            return False
            
        # Check simplex/duplex
        if params["simplex_duplex"].lower() != "both" and pump["Simplex_Duplex"].lower() != params["simplex_duplex"].lower():
            return False
            
        return True
    
    @staticmethod
    def _process_pump(pump, params):
        # Process model name based on options
        final_model = pump["Model"]
        
        # Apply diaphragm and leak detection changes
        diaphragm = params["diaphragm"].lower()
        leak_detection = params["leak_detection"].lower()
        
        if diaphragm == "ptfe":
            if leak_detection == "no":
                final_model = final_model[:3] + "T" + final_model[4:]
            elif leak_detection == "conductive":
                final_model = final_model[:3] + "W" + final_model[4:]
            elif leak_detection == "vacuum":
                final_model = final_model[:3] + "K" + final_model[4:]
        elif diaphragm == "viton":
            if leak_detection == "no":
                final_model = final_model[:3] + "B" + final_model[4:]
            elif leak_detection == "conductive":
                final_model = final_model[:3] + "R" + final_model[4:]
        elif diaphragm == "hypalon":
            if leak_detection == "no":
                final_model = final_model[:3] + "A" + final_model[4:]
            elif leak_detection == "conductive":
                final_model = final_model[:3] + "M" + final_model[4:]
        elif diaphragm == "epdm":
            if leak_detection == "no":
                final_model = final_model[:3] + "C" + final_model[4:]
        
        # Apply ball size changes
        final_model = PricingCalculator.replace_last_letter(final_model, params["ball_size"])
        
        # Add flange suffix if needed
        if params["flange"].lower() == "yes":
            final_model += "F"
            
        # Add degassing suffix if needed
        if params["degassing"].lower() == "yes":
            final_model += "D"
            
        # Add HP suffix if needed
        psi = float(params["psi"])
        max_pressure = float(pump["Max_Pressure_PSI"])
        use_hp = psi > max_pressure
        if use_hp:
            final_model += "HP"
            
        # Replace model letters based on material and ball type
        final_model = PricingCalculator.replace_model_letters(
            final_model, 
            params["liquid_end_material"], 
            params["balls_type"]
        )
        
        # Calculate base price
        pump_price = float(pump["Pump_Price"]) if pump["Pump_Price"] is not None else 0
        
        # Calculate optional prices
        optional_prices = PumpFinder._calculate_optional_prices(pump, params)
        
        return {
            "model": final_model,
            "series": pump["Series"],
            "simplex_duplex": pump["Simplex_Duplex"],
            "gph": float(pump["GPH_60Hz"]) if params["hz"] == 60 else float(pump["GPH_50Hz"]),
            "lph": float(pump["LPH_60Hz"]) if params["hz"] == 60 else float(pump["LPH_50Hz"]),
            "psi": float(pump["Max_Pressure_PSI"]),
            "bar": float(pump["Max_Pressure_Bar"]),
            "high_pressure_psi": float(pump["Max_Pressure_PSI_High_Pressure_Adder"]),
            "high_pressure_bar": float(pump["Max_Pressure_Bar_High_Pressure_Adder"]),
            "max_spm": float(pump["Max_SPM"]),
            "liquid_end_material": pump["Liquid_End_Material"],
            "pump_price": pump_price,
            "OG_Model": pump["Model"],
            "Liq_Inlet": pump["Liq_Inlet"],
            "Liq_Outlet": pump["Liq_Outlet"],
            **optional_prices
        }
    
    @staticmethod
    def _calculate_optional_prices(pump, params):
        # Implement all optional price calculations
        prices = {}
        
        # Motor price
        if params["want_motor"].lower() == "yes":
            motor_price_column = f"{params['motor_type']}_{params['motor_power']}_Price"
            motor_price_value = pump[motor_price_column]
            
            if params["motor_power"] == "DC" and motor_price_value == "0":
                return None  # Skip this pump
            
            prices["motor_price"] = motor_price_value if motor_price_value == "C/F" else float(motor_price_value)
        
        # Diaphragm price
        diaphragm = params["diaphragm"].lower()
        if diaphragm == "viton":
            viton_price = pump["Viton"]
            if viton_price is None or float(viton_price) == 0:
                return None
            prices["diaphragm_price"] = float(viton_price)
        elif diaphragm == "hypalon":
            hypalon_price = pump["Hypalon"]
            if hypalon_price is None or float(hypalon_price) == 0:
                return None
            prices["diaphragm_price"] = float(hypalon_price)
        elif diaphragm == "epdm":
            epdm_price = pump["EPDM"]
            if epdm_price is None or float(epdm_price) == 0:
                return None
            prices["diaphragm_price"] = float(epdm_price)
            
        # Leak detection price
        if params["leak_detection"].lower() == "conductive":
            prices["leak_detection_price"] = float(pump["Conductive_Leak_Detection_Price_Adder"]) if pump["Conductive_Leak_Detection_Price_Adder"] is not None else 0
        elif params["leak_detection"].lower() == "vacuum":
            prices["leak_detection_price"] = float(pump["Vacuum_Leak_Detection_Price_Adder"]) if pump["Vacuum_Leak_Detection_Price_Adder"] is not None else 0
            
        # Food graded oil price
        if params["food_graded_oil"].lower() == "yes":
            series = pump["Series"]
            if series == "Series 1000":
                prices["food_graded_oil_price"] = 140
            elif series == "Series 2000":
                prices["food_graded_oil_price"] = 280
            elif series == "Series 3000":
                prices["food_graded_oil_price"] = 840
            elif series == "Series 4000":
                prices["food_graded_oil_price"] = 2200
            elif series == "Series 900":
                prices["food_graded_oil_price"] = 44
                
        return prices
    
    @staticmethod
    def _select_best_pump(pumps, params):
        pumps.sort(key=lambda x: (
            float('inf') if isinstance(x["total_price"], str) else x["total_price"],
            x["gph"],
            x["max_spm"],
            x["psi"]
        ))
        
        best_pump = pumps[0]
        
        # Add additional calculations
        best_pump = PumpFinder._calculate_final_pricing(best_pump, params)
        
        return best_pump
    
    @staticmethod
    def _calculate_final_pricing(pump, params):
        # Calculate base price
        total_price = pump["pump_price"]
        
        # Add degassing price if applicable
        if params["degassing"].lower() == "yes":
            total_price += 450
            
        # Add motor price if applicable
        if "motor_price" in pump:
            if pump["motor_price"] != "C/F":
                total_price += pump["motor_price"]
            else:
                pump.setdefault("optional_accessories_notes", []).append("C/F (Motor)")
                
        # Add diaphragm price
        if "diaphragm_price" in pump:
            total_price += pump["diaphragm_price"]
            
        # Add leak detection price
        if "leak_detection_price" in pump:
            total_price += pump["leak_detection_price"]
            
        # Add food graded oil price
        if "food_graded_oil_price" in pump:
            total_price += pump["food_graded_oil_price"]
            
        # Calculate flange prices if applicable
        if params["flange"].lower() == "yes":
            flange_price = PricingCalculator.calculate_flange_price(
                float(params["psi"]),
                params["suction_flange_size"],
                params["discharge_flange_size"],
                params["liquid_end_material"]
            )
            
            flange_adaptor_price = PricingCalculator.calculate_flange_adaptor_price(
                float(params["psi"]),
                params["suction_flange_size"],
                params["discharge_flange_size"],
                params["liquid_end_material"],
                params["simplex_duplex"]
            )
            
            if isinstance(flange_price.get("total_flange_price"), str):
                pump.setdefault("optional_accessories_notes", []).append(flange_price["total_flange_price"])
            else:
                total_price += flange_price.get("total_flange_price", 0)
                
            if isinstance(flange_adaptor_price.get("total_flange_adaptor_price"), str):
                pump.setdefault("optional_accessories_notes", []).append(flange_adaptor_price["total_flange_adaptor_price"])
            else:
                total_price += flange_adaptor_price.get("total_flange_adaptor_price", 0)
                
        # Calculate suction lift price if applicable
        if params["suction_lift"].lower() == "yes":
            suction_lift_price = PricingCalculator.calculate_suction_lift_price(
                pump["series"],
                params["liquid_end_material"],
                params["suction_lift"]
            )
            
            if suction_lift_price == "C/F":
                pump.setdefault("optional_accessories_notes", []).append("C/F (Suction Lift)")
            elif suction_lift_price != 0:
                total_price += suction_lift_price
                
        # Calculate optional accessories prices
        optional_accessories_total_price = 0
        optional_notes = pump.get("optional_accessories_notes", [])
        
        # Spare parts kit
        if params["spare_parts_kit"].lower() == "yes":
            spare_parts_kit_price = float(pump["Spare_Parts_Kit_Price"]) if pump["Spare_Parts_Kit_Price"] not in [None, "0"] else 0
            if spare_parts_kit_price == 0:
                optional_notes.append("C/F (Spare Parts Kit)")
            else:
                optional_accessories_total_price += math.ceil(spare_parts_kit_price)
                pump["spare_parts_kit_price"] = math.ceil(spare_parts_kit_price)
                pump["spare_parts_kit_info"] = pump.get("Spare_Parts_Kit_Info")
                
        # Back pressure valve
        if params["back_pressure_valve"].lower() == "yes":
            bp_data = PumpModel.get_accessory_prices(pump["OG_Model"])
            selected_bp_price = None
            
            if bp_data:
                if float(params["psi"]) <= 150:
                    selected_bp_price = bp_data.get("Back_Pressure_Valve_150")
                elif float(params["psi"]) <= 750:
                    selected_bp_price = bp_data.get("Back_Pressure_Valve_750")
                    
            if selected_bp_price in [None, 0, "0", "C/F"]:
                optional_notes.append("C/F (Back Pressure Valve)")
            else:
                bp_price = math.ceil(float(selected_bp_price))
                optional_accessories_total_price += bp_price
                pump["back_pressure_valve_price"] = bp_price
                pump["back_pressure_valve_message"] = (
                    f"Back Pressure Valve in {params['liquid_end_material']} with "
                    f"{bp_data.get('Connection_Size', 'N/A')}. "
                    f"Max Pressure is {params['psi']} PSI."
                )
                
        # Pressure relief valve
        if params["pressure_relief_valve"].lower() == "yes":
            pr_data = PumpModel.get_accessory_prices(pump["OG_Model"])
            selected_pr_price = None
            
            if pr_data:
                if float(params["psi"]) <= 150:
                    selected_pr_price = pr_data.get("Pressure_Relief_Valve_150")
                elif float(params["psi"]) <= 750:
                    selected_pr_price = pr_data.get("Pressure_Relief_Valve_750")
                    
            if selected_pr_price in [None, 0, "0", "C/F"]:
                optional_notes.append("C/F (Pressure Relief Valve)")
            else:
                pr_price = math.ceil(float(selected_pr_price))
                optional_accessories_total_price += pr_price
                pump["pressure_relief_valve_price"] = pr_price
                port = pr_data.get("Port", "C/F Port")
                pump["pressure_relief_valve_message"] = (
                    f"{port} Pressure Relief Valve in {params['liquid_end_material']} with "
                    f"{pr_data.get('Connection_Size', 'N/A')}. "
                    f"Max. Pressure is {params['psi']} PSI."
                )
                
        # Pulsation dampener
        if params["pulsation_dampener"].lower() == "yes":
            pd_data = PumpModel.get_accessory_prices(pump["OG_Model"])
            pd_price = pd_data.get("Pulsation_Dampener") if pd_data else None
            
            if pd_price in [None, 0, "0", "C/F"]:
                optional_notes.append("C/F (Pulsation Dampener)")
            else:
                pd_price = math.ceil(float(pd_price))
                optional_accessories_total_price += pd_price
                pump["pulsation_dampener_price"] = pd_price
                pump["pulsation_dampener_message"] = (
                    f"Pulsation Dampener in {params['liquid_end_material']} with a "
                    f"Viton bladder and Max pressure of {params['psi']} PSI."
                )
                
        # Calibration column
        if params["calibration_column"].lower() == "yes":
            cc_price = float(pump["Calibration_Column"]) if pump["Calibration_Column"] not in [None, "0"] else 0
            optional_accessories_total_price += math.ceil(cc_price)
            pump["calibration_column_price"] = math.ceil(cc_price)
            
        # Pressure gauge
        if params["pressure_gauge"].lower() == "yes":
            pg_price = float(pump["Pressure_Gauge"]) if pump["Pressure_Gauge"] not in [None, "0"] else 0
            if pg_price == 0:
                optional_notes.append("C/F (Pressure Gauge)")
            else:
                optional_accessories_total_price += math.ceil(pg_price)
                pump["pressure_gauge_price"] = math.ceil(pg_price)
                
        # Update pump with calculated prices
        pump["base_price"] = math.ceil(total_price) if isinstance(total_price, (int, float)) else total_price
        pump["optional_accessories_total_price"] = optional_accessories_total_price
        pump["optional_accessories_notes"] = optional_notes
        
        # Calculate final total price
        if isinstance(pump["base_price"], (int, float)) and isinstance(optional_accessories_total_price, (int, float)):
            final_price = pump["base_price"] + optional_accessories_total_price
            if optional_notes:
                pump["final_total_price"] = f"${final_price} + {' + '.join(optional_notes)}"
            else:
                pump["final_total_price"] = f"${final_price}"
        else:
            price_str = f"{pump['base_price']}" if isinstance(pump["base_price"], str) else f"${pump['base_price']}"
            if optional_notes:
                pump["final_total_price"] = f"{price_str} + {' + '.join(optional_notes)}"
            else:
                pump["final_total_price"] = price_str
                
        # Add customer info
        pump["customer_name"] = params["customer_name"]
        pump["user_email"] = params["user_email"]
        
        return pump