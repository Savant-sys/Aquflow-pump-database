def find_best_pump(gph=None, lph=None, psi=None, bar=None, hz=None, simplex_duplex=None, want_motor=None, motor_type=None, motor_power=None, spm=None, diaphragm=None, liquid_end_material=None, leak_detection=None, phase=None):
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
        return {"error": "Simplex/Duplex is required. Please provide either 'Simplex', 'Duplex', or 'Both' (one of them)."}

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
    valid_liquid_end_material = ["316ss", "alloy 20", "hast c.", "pvc", "pvdf"]
    if liquid_end_material is None or liquid_end_material.lower() not in valid_liquid_end_material:
        return {"error": "Liquid End Material is required and must be one of the following: 316SS, Alloy 20, Hast C., PVC, PVDF."}

    # Ensure leak detection is provided and is one of the valid options
    valid_leak_detection_options = ["no", "conductive", "vacuum"]
    if leak_detection is None or leak_detection.lower() not in valid_leak_detection_options:
        return {"error": "Leak Detection is required and must be one of the following: No, Conductive, Vacuum."}

    # Ensure phase is provided and is one of the valid options
    valid_phase_options = ["single", "three"]
    if phase is None or phase.lower() not in valid_phase_options:
        return {"error": "Phase is required and must be one of the following: Single, Three."}

    # Rest of the function remains the same...
    # (No changes needed for database filtering or calculations since Phase is not in the database)

    # Example of how you might use the phase later (e.g., in the returned result)
    filtered_pumps = []  # Replace with your actual logic
    if filtered_pumps:
        best_pump = filtered_pumps[0]
        best_pump["phase"] = phase  # Add phase to the result for later use
        return best_pump
    else:
        return {"error": "No suitable pump found for the given specifications."}