# Ball Size Mapping
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
    # ... other flange sizes (300, 400, 600, 900)
}

# Flange Adaptor Pricing Tables
flange_adaptor_pricing_tables = {
    "psi_lt_1000": {
        "1/2\"": {"316SS": 8.16, "Alloy 20": 62.74, "Hast. C": "C/F", "PVC": 1.2, "PVDF": "C/F"},
        # ... other sizes
    },
    "psi_gt_1000": {
        "1/2\"": {"316SS": 24.31, "Alloy 20": "C/F", "Hast. C": "C/F", "PVC": 0, "PVDF": 0},
        # ... other sizes
    },
    "all": {
        "1/2\"": {"316SS": 9.53, "Alloy 20": 40.23, "Hast. C": "C/F", "PVC": 1, "PVDF": "C/F"},
        # ... other sizes
    }
}

# Validation Constants
valid_spm_options = [29, 44, 58, 88, 97, 117, 140, 170, 191]
valid_diaphragm_options = ["ptfe", "viton", "hypalon", "epdm"]
valid_liquid_end_material = ["316SS", "Alloy 20", "Hast. C", "PVC", "PVDF"]
valid_leak_detection_options = ["no", "conductive", "vacuum"]
valid_phase_options = ["1 Ph", "3 Ph"]
valid_balls_type_options = ["Std.", "Tungsten", "Ceramic"]
valid_ball_size_options_std = [
    "Standard", "1/8\"", "3/16\"", "1/4\"", "3/8\"", "1/2\"", "5/8\"", "3/4\"", 
    "7/8\"", "1\"", "1-1/4\"", "1-1/2\"", "1-3/4\"", "2\"", "2-1/4\"", "2-1/2\"", 
    "3\"", "3-1/2\"", "1/2\" Double Ball", "7/8\" Double Ball", 
    "1/2\" Suction and 3/8\" Discharge", "3/8\" Double Ball"
]
valid_ball_size_options_special = [
    "Standard", "1/4\"", "3/8\"", "1/2\"", "7/8\"", "1-1/4\"", "1-1/2\""
]