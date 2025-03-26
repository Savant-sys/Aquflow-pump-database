// Function to update ball size options
function updateBallSizeOptions() {
    const ballsType = document.getElementById("balls_type").value;
    const ballSizeSelect = document.getElementById("ball_size");

    // Clear existing options
    ballSizeSelect.innerHTML = '';

    // Define ball size options based on ball type
    let ballSizeOptions = [];
    if (ballsType === "Tungsten" || ballsType === "Ceramic") {
        ballSizeOptions = [
            "Standard",
            "1/4\"",
            "3/8\"",
            "1/2\"",
            "7/8\"",
            "1-1/4\"",
            "1-1/2\""
        ];
    } else {
        ballSizeOptions = [
            "Standard",
            "1/8\"",
            "3/16\"",
            "1/4\"",
            "3/8\"",
            "1/2\"",
            "5/8\"",
            "3/4\"",
            "7/8\"",
            "1\"",
            "1-1/4\"",
            "1-1/2\"",
            "1-3/4\"",
            "2\"",
            "2-1/4\"",
            "2-1/2\"",
            "3\"",
            "3-1/2\"",
            "1/2\" Double Ball",
            "7/8\" Double Ball",
            "1/2\" Suction and 3/8\" Discharge",
            "3/8\" Double Ball"
        ];
    }

    // Add new options
    ballSizeOptions.forEach(size => {
        const option = document.createElement("option");
        option.value = size;
        option.text = size;
        ballSizeSelect.appendChild(option);
    });
}

// Function to toggle flange size options
function toggleFlangeSizeOptions() {
    const flangeSelect = document.getElementById("flange");
    const flangeSizeOptions = document.querySelector(".flange-size-options");

    if (flangeSelect.value === "Yes") {
        flangeSizeOptions.style.display = "block"; // Show flange size options
    } else {
        flangeSizeOptions.style.display = "none"; // Hide flange size options
    }
}

// Initialize ball size options on page load
document.addEventListener("DOMContentLoaded", () => {
    updateBallSizeOptions();
    document.getElementById("balls_type").addEventListener("change", updateBallSizeOptions);
    document.getElementById("flange").addEventListener("change", toggleFlangeSizeOptions);
    toggleFlangeSizeOptions();
});

// Handle form submission
document.getElementById("pumpForm").addEventListener("submit", async (e) => {
    e.preventDefault(); // Prevent form submission and page reload

    // Show loading state
    const resultDiv = document.getElementById("result");
    resultDiv.style.display = "block";

    // Get form data
    const formData = {
        customer_name: document.getElementById("customer_name").value,
        gph: document.getElementById("gph").value,
        psi: document.getElementById("psi").value,
        hz: document.getElementById("hz").value,
        simplex_duplex: document.getElementById("simplex_duplex").value,
        want_motor: document.getElementById("want_motor").value,
        motor_type: document.getElementById("motor_type").value,
        motor_power: document.getElementById("motor_power").value,
        spm: document.getElementById("spm").value,
        diaphragm: document.getElementById("diaphragm").value,
        liquid_end_material: document.getElementById("liquid_end_material").value,
        leak_detection: document.getElementById("leak_detection").value,
        phase: document.getElementById("phase").value,
        degassing: document.getElementById("degassing").value,
        flange: document.getElementById("flange").value,
        balls_type: document.getElementById("balls_type").value,
        suction_lift: document.getElementById("suction_lift").value,
        ball_size: document.getElementById("ball_size").value,
        food_graded_oil: document.getElementById("food_graded_oil").value,
        user_email: document.getElementById("user_email").value,
        spare_parts_kit: document.getElementById("spare_parts_kit").value,
        back_pressure_valve: document.getElementById("back_pressure_valve").value,
        pressure_relief_valve: document.getElementById("pressure_relief_valve").value,
    };

    // Add flange sizes if applicable
    if (formData.flange === "Yes") {
        formData.suction_flange_size = document.getElementById("suction_flange_size").value;
        formData.discharge_flange_size = document.getElementById("discharge_flange_size").value;
    }

    try {
        // Call the API
        // const apiUrl = new URL("https://www.acuflow.com/api-proxy.php");
        const apiUrl = new URL("http://localhost:5000/get_pump")
        Object.keys(formData).forEach(key => apiUrl.searchParams.append(key, formData[key]));

        console.log("API URL:", apiUrl.toString()); // Debugging line

        const response = await fetch(apiUrl);
        console.log("API Response Status:", response.status); // Debugging line

        if (!response.ok) {
            throw new Error(`API request failed with status ${response.status}`);
        }

        const data = await response.json();
        console.log("API Response Data:", data); // Debugging line

        // Display the result
        const resultContent = document.getElementById("result-content");
        if (!resultContent) {
            console.error("Result content div not found!"); // Debugging line
            return;
        }
        
        if (data.error) {
            console.error("API Error:", data.error); // Debugging line
            resultContent.innerHTML = `<p style="color: red;">${data.error}</p>`;
        } else {
            // Final Total Price: Extract C/F from base and optional accessories
            const basePrice = data.base_price;
            const optionalNotes = data.optional_accessories_notes || [];

            let cfNotes = [];

            // Parse C/F notes from base_price if it's a string
            if (typeof basePrice === "string" && basePrice.includes("C/F")) {
                const baseCfMatches = basePrice.match(/C\/F\s*\(([^)]+)\)/g);
                if (baseCfMatches) {
                    cfNotes.push(...baseCfMatches.map(note => note.match(/\(([^)]+)\)/)[1]));
                }
            }

            // Collect C/F notes from optional accessories
            optionalNotes.forEach(note => {
                const match = note.match(/C\/F\s*\(([^)]+)\)/);
                if (match) {
                    cfNotes.push(match[1]);
                }
            });

            // Combine notes into one C/F string
            let cfText = cfNotes.length > 0 ? ` + C/F (${cfNotes.join(" + ")})` : "";

            // Format the final total price display
            const formattedFinalTotal = typeof data.final_total_price === 'number'
                ? `$${data.final_total_price}${cfText}`
                : (data.final_total_price.startsWith('$') ? data.final_total_price : `$${data.final_total_price}`) + cfText;

            // Optional Accessories C/F formatting
            let optionalCfNotes = [];
            (optionalNotes || []).forEach(note => {
                const match = note.match(/C\/F\s*\(([^)]+)\)/);
                if (match) {
                    optionalCfNotes.push(match[1]);
                }
            });
            const optionalCfText = optionalCfNotes.length > 0 ? ` + C/F (${optionalCfNotes.join(" + ")})` : "";
            // Format the optional accessories display
            const formattedOptionalAccessories = typeof data.optional_accessories_total_price === 'number'
            ? `$${data.optional_accessories_total_price}${optionalCfText}`
            : (data.optional_accessories_total_price || "N/A") + optionalCfText;

            resultContent.innerHTML = `
            <div style="margin-bottom: 15px;">
                <p><strong>Model:</strong> ${data.model}</p>
                <p><strong>Series:</strong> ${data.series}</p>
                <p><strong>Spare Parts Kit:</strong> ${data.spare_parts_kit || 'No'} ${data.spare_parts_kit === 'Yes'
                    ? `(${data.spare_parts_kit_price === 'C/F' ? 'C/F' : '$' + data.spare_parts_kit_price})`
                    : ''
                }</p>
                <p><strong>Back Pressure Valve:</strong> ${data.back_pressure_valve || 'No'} ${data.back_pressure_valve === 'Yes'
                    ? `(${data.back_pressure_valve_price === 'C/F' ? 'C/F' : '$' + data.back_pressure_valve_price})`
                    : ''
                }</p>
                <p><strong>Pressure Relief Valve:</strong> ${data.pressure_relief_valve || 'No'} ${data.pressure_relief_valve === 'Yes'
                    ? `(${data.pressure_relief_valve_price === 'C/F' ? 'C/F' : '$' + data.pressure_relief_valve_price})`
                    : ''
                }</p>
        
                <p><strong>Base Pump Price:</strong> ${
                    typeof data.base_price === 'number'
                        ? `$${data.base_price}`
                        : data.base_price // already includes C/F if needed
                }</p>
        
                <p><strong>Optional Accessories:</strong> ${formattedOptionalAccessories}</p>
        
                <p><strong>Final Total Price:</strong> ${formattedFinalTotal}</p>
            </div>
            <div style="margin-top: 10px;">
                <p>
                    <strong>${data.email_status || ''}</strong> A PDF copy was sent to <strong>${formData.user_email}</strong>.
                    If you don’t receive it soon, give us a call, use live chat, or email us for assistance.
                </p>
            </div>
        `;        

        }
    } catch (error) {
        console.error("Error:", error); // Debugging line
        const resultContent = document.getElementById("result-content");
        resultContent.innerHTML = `<p style="color: red;">An error occurred. Please check the email.</p>`;
    }
});