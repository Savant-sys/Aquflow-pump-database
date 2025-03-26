from reportlab.lib.pagesizes import letter
from reportlab.lib import colors
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer, Table, TableStyle, Image
from datetime import datetime
import os
from config import Config

class PDFGenerator:
    @staticmethod
    def generate_pdf(pump_data, filename=None):
        Config.ensure_directories_exist()
        
        if not filename:
            filename = f"quote_{datetime.now().strftime('%Y%m%d_%H%M%S')}.pdf"
            filename = os.path.join(Config.PDF_OUTPUT_DIR, filename)
        
        doc = SimpleDocTemplate(filename, pagesize=letter)
        elements = []
        
        styles = PDFGenerator._create_styles()
        
        # Header
        elements.extend(PDFGenerator._create_header(pump_data, styles))
        
        # Pump Details
        elements.extend(PDFGenerator._create_pump_details(pump_data, styles))
        
        # Specifications
        elements.extend(PDFGenerator._create_specifications(pump_data, styles))
        
        # Pricing
        elements.extend(PDFGenerator._create_pricing(pump_data, styles))
        
        # Footer
        elements.extend(PDFGenerator._create_footer(styles))
        
        doc.build(elements)
        return filename
    
    @staticmethod
    def _create_styles():
        styles = getSampleStyleSheet()
        
        # Add custom styles
        styles.add(ParagraphStyle(
            name="CenteredTitle",
            parent=styles["Heading2"],
            fontSize=16,
            alignment=1,
            spaceAfter=6,
        ))
        
        styles.add(ParagraphStyle(
            name="FooterStyle",
            parent=styles["BodyText"],
            fontSize=9,
            textColor=colors.grey,
            leading=12,
            spaceBefore=10,
        ))
        
        return styles
    
    @staticmethod
    def _create_header(pump_data, styles):
        elements = []
        
        # Generate quote info
        today = datetime.today()
        quote_number = f"AQQ{today.strftime('%y%m%d')}__"
        formatted_date = today.strftime('%d-%b-%y')
        
        # Quote date table
        quote_date_table = Table([
            ["Quote #", "Date"],
            [quote_number, formatted_date]
        ], colWidths=[110, 110])
        
        quote_date_table.setStyle(TableStyle([
            ("BACKGROUND", (0, 0), (-1, 0), colors.grey),
            ("TEXTCOLOR", (0, 0), (-1, 0), colors.whitesmoke),
            ("ALIGN", (0, 0), (-1, -1), "CENTER"),
            ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
            ("BOTTOMPADDING", (0, 0), (-1, 0), 6),
            ("GRID", (0, 0), (-1, -1), 1, colors.black)
        ]))
        
        # Customer table
        customer_table = Table([
            ["Customer"],
            [pump_data.get("customer_name", "N/A")]
        ], colWidths=[215], rowHeights=[20, 20])
        
        customer_table.setStyle(TableStyle([
            ("BACKGROUND", (0, 0), (-1, 0), colors.grey),
            ("TEXTCOLOR", (0, 0), (-1, 0), colors.whitesmoke),
            ("ALIGN", (0, 0), (-1, -1), "CENTER"),
            ("VALIGN", (0, 0), (-1, -1), "MIDDLE"),
            ("FONTNAME", (0, 0), (-1, 0), "Helvetica-Bold"),
            ("FONTSIZE", (0, 0), (-1, -1), 10),
            ("BOTTOMPADDING", (0, 0), (-1, 0), 2),
            ("TOPPADDING", (0, 1), (-1, 1), 5),
            ("GRID", (0, 0), (-1, -1), 1, colors.black)
        ]))
        
        # Address
        address = """<b><font size="9">Acuflow-Div. of Precision</font></b><br/>
        <b><font size="9">Flow Technologies Inc.</font></b><br/>
        <font size="8">1642 McGaw Ave.<br/>
        Irvine, CA 92614<br/>
        Ph: (949) 757-1753</font>"""
        
        # Quote form text
        quote_form_text = Paragraph("<font size='7'>Quote Form 2311</font>", styles["BodyText"])
        
        # Header table
        header_table = Table([
            [[Image(Config.LOGO_PATH, width=100, height=50), Spacer(1, 10), Spacer(1, 10), customer_table],
             Paragraph(address, styles["BodyText"]),
             [quote_form_text, quote_date_table]
            ]
        ], colWidths=[115, 250, 120])
        
        header_table.setStyle(TableStyle([
            ("VALIGN", (0, 0), (-1, -1), "TOP"),
            ("LEFTPADDING", (1, 0), (1, 0), 5),
            ("ALIGN", (0, 0), (0, 0), "LEFT"),
            ("ALIGN", (1, 0), (1, 0), "LEFT"),
            ("ALIGN", (2, 0), (2, 0), "RIGHT")
        ]))
        
        elements.append(header_table)
        elements.append(Spacer(1, 20))
        
        return elements
    
    @staticmethod
    def _create_pump_details(pump_data, styles):
        elements = []
        
        # Pump model
        elements.append(Paragraph(f"<b>Pump Model:</b> {pump_data.get('model', 'N/A')}", styles["CenteredTitle"]))
        
        # Description
        elements.append(Paragraph("<b>Description:</b>", styles["Heading2"]))
        
        # Build dynamic description
        description = PDFGenerator._build_description(pump_data)
        elements.append(Paragraph(description, styles["BodyText"]))
        elements.append(Spacer(1, 12))
        
        return elements
    
    @staticmethod
    def _build_description(pump_data):
        ball_type = pump_data.get("balls_type", "N/A")
        diaphragm = pump_data.get("diaphragm", "N/A")
        suction_lift_text = "High Suction Lift " if pump_data.get("suction_lift", "").lower() == "yes" else ""
        
        if pump_data.get("flange", "").lower() == "yes":
            psi = pump_data.get("psi", 0)
            flange_size_id = PricingCalculator.get_flange_size_id(psi)
            
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
            
        # Add motor description if applicable
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
                phase = ""
                
            motor_hp = pump_data.get("Motor_HP_AC", "N/A")
            
            description += (
                f" The pump comes with a {motor_hp} HP, {input_voltage}, {phase} {pump_data.get('motor_type', 'N/A')} motor."
            )
            
        # Add additional features
        additional_features = []
        if pump_data.get("degassing", "").lower() == "yes":
            additional_features.append("degassing valve")
        if pump_data.get("food_graded_oil", "").lower() == "yes":
            additional_features.append("food-graded oil")
        if pump_data.get("suction_lift", "").lower() == "yes":
            additional_features.append("suction lift")
            
        # Add optional accessories
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
            
        return description
    
    @staticmethod
    def _create_specifications(pump_data, styles):
        elements = []
        
        elements.append(Paragraph("<b>Key Specifications:</b>", styles["Heading2"]))
        elements.append(Spacer(1, 6))
        
        # Build specifications table
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
        
        # Add optional specifications
        if pump_data.get("flange", "") == "Yes":
            pump_specs.append(["Flange", "Yes"])
        if pump_data.get("suction_lift", "") == "Yes":
            pump_specs.append(["Suction Lift", "Yes"])
            
        # Add optional accessories
        if pump_data.get("spare_parts_kit", "") == "Yes":
            price = "C/F" if pump_data.get("spare_parts_kit_price") == "C/F" else f"${pump_data['spare_parts_kit_price']}"
            pump_specs.append(["Spare Parts Kit", price])
            
        if pump_data.get("back_pressure_valve", "") == "Yes":
            price = "C/F" if pump_data.get("back_pressure_valve_price") == "C/F" else f"${pump_data['back_pressure_valve_price']}"
            pump_specs.append(["Back Pressure Valve", price])
            
        if pump_data.get("pressure_relief_valve", "") == "Yes":
            price = "C/F" if pump_data.get("pressure_relief_valve_price") == "C/F" else f"${pump_data['pressure_relief_valve_price']}"
            pump_specs.append(["Pressure Relief Valve", price])
            
        if pump_data.get("pulsation_dampener", "") == "Yes":
            price = "C/F" if pump_data.get("pulsation_dampener_price") == "C/F" else f"${pump_data['pulsation_dampener_price']}"
            pump_specs.append(["Pulsation Dampener", price])
            
        if pump_data.get("calibration_column", "") == "Yes":
            price = "C/F" if pump_data.get("calibration_column_price") == "C/F" else f"${pump_data['calibration_column_price']}"
            pump_specs.append(["Calibration Column", price])
            
        if pump_data.get("pressure_gauge", "") == "Yes":
            price = "C/F" if pump_data.get("pressure_gauge_price") == "C/F" else f"${pump_data['pressure_gauge_price']}"
            pump_specs.append(["Pressure Gauge", price])
            
        # Create table
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
        
        return elements
    
    @staticmethod
    def _create_pricing(pump_data, styles):
        elements = []
        
        # Format prices
        base_price = pump_data.get("base_price", "N/A")
        optional_price = pump_data.get("optional_accessories_total_price", 0)
        optional_notes = pump_data.get("optional_accessories_notes", [])
        final_price = pump_data.get("final_total_price", "N/A")
        
        # Format optional price
        optional_price_display = (
            f"${optional_price}" if isinstance(optional_price, (int, float)) else
            " + ".join(optional_notes) if optional_notes else "N/A"
        )
        
        # Format final price
        final_price_display = (
            f"${final_price}" if isinstance(final_price, (int, float)) else final_price
        )
        
        # Base price display
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
            
        # Optional accessories display
        optional_display = f"${optional_price}" if isinstance(optional_price, (int, float)) else "N/A"
        
        # Group C/F notes
        optional_cf_notes = [note for note in optional_notes if "C/F" in note]
        optional_cf_combined = ""
        if optional_cf_notes:
            optional_cf_combined = f" + C/F ({' + '.join(note.replace('C/F (', '').replace(')', '') for note in optional_cf_notes)})"
            
        optional_display += optional_cf_combined
        
        # Price table
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
        
        return elements
    
    @staticmethod
    def _create_footer(styles):
        elements = []
        
        elements.append(Paragraph("<b>Notes:</b>", styles["FooterStyle"]))
        
        footer_notes = [
            "1. Your above pricing are Net prices based on Ex work Irvine, CA. Prices valid 30 days from quote date.",
            "2. If you decided to add ECCA or Leak detection system, the pump model number will change.",
            "3. Estimated lead time is 2-3 weeks ARO, based on current inventory and scheduling.",
            "4. There will be price adder for Material Certificates, certificate of origin and Performance test.",
            "5. Anything not clearly stated in the quote above is deemed as not included in pricing, regardless of RFQ or Specs."
        ]
        
        footer_text = "<br/>".join(footer_notes)
        elements.append(Paragraph(footer_text, styles["FooterStyle"]))
        
        return elements