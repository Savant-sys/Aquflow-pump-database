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
    console.log("Default prevented!"); // Debugging log

    console.log("Form submission prevented!"); // Debugging log

    // Get form data
    const gph = document.getElementById("gph").value;
    const psi = document.getElementById("psi").value;
    const hz = document.getElementById("hz").value;
    const simplex_duplex = document.getElementById("simplex_duplex").value;
    const want_motor = document.getElementById("want_motor").value;
    const motor_type = document.getElementById("motor_type").value;
    const motor_power = document.getElementById("motor_power").value;
    const spm = document.getElementById("spm").value;
    const diaphragm = document.getElementById("diaphragm").value;
    const liquid_end_material = document.getElementById("liquid_end_material").value;
    const leak_detection = document.getElementById("leak_detection").value;
    const phase = document.getElementById("phase").value;
    const degassing = document.getElementById("degassing").value;
    const flange = document.getElementById("flange").value;
    const balls_type = document.getElementById("balls_type").value;
    const suction_lift = document.getElementById("suction_lift").value;
    const ball_size = document.getElementById("ball_size").value;
    const food_graded_oil = document.getElementById("food_graded_oil").value;
    const user_email = document.getElementById("user_email").value;
    const customer_name = document.getElementById("customer_name").value;

    // Get flange sizes if flange is "Yes"
    let suction_flange_size = null;
    let discharge_flange_size = null;
    if (flange === "Yes") {
        suction_flange_size = document.getElementById("suction_flange_size").value;
        discharge_flange_size = document.getElementById("discharge_flange_size").value;

        // Validate flange sizes
        if (!suction_flange_size || !discharge_flange_size) {
            alert("Please select both Suction Flange Size and Discharge Flange Size.");
            return; // Stop the form submission if sizes are not selected
        }
    }

    console.log("Form Data:", {
        gph, psi, hz, simplex_duplex, want_motor, motor_type, motor_power, spm, diaphragm, liquid_end_material, leak_detection, phase, degassing, flange, balls_type, suction_lift, ball_size, suction_flange_size, discharge_flange_size, food_graded_oil, user_email
    });

    try {
        // Build the API URL
        // const apiUrl = new URL("https://aquflow-api-server-quote-c561945c3782.herokuapp.com/get_pump");
        const apiUrl = new URL("http://localhost:5000/get_pump");
        const params = {
            customer_name,
            gph,
            psi,
            hz,
            simplex_duplex,
            want_motor,
            motor_type,
            motor_power,
            spm,
            diaphragm,
            liquid_end_material,
            leak_detection,
            phase,
            degassing,
            flange,
            balls_type,
            suction_lift,
            ball_size,
            food_graded_oil,
            user_email,
        };

        // Add flange sizes to the API call if flange is "Yes"
        if (flange === "Yes") {
            params.suction_flange_size = suction_flange_size;
            params.discharge_flange_size = discharge_flange_size;
        }

        // Append parameters to the URL
        Object.keys(params).forEach(key => apiUrl.searchParams.append(key, params[key]));

        console.log("API URL:", apiUrl.toString());

        // Call the API
        const response = await fetch(apiUrl);
        console.log("API Response Status:", response.status);

        if (!response.ok) {
            throw new Error(`API request failed with status ${response.status}`);
        }

        const data = await response.json();
        console.log("API Response Data:", data);

        // Display the result
        const resultDiv = document.getElementById("result");
        if (data.error) {
            resultDiv.innerHTML = `<p style="color: red;">${data.error}</p>`;
        } else {
            resultDiv.innerHTML = `
                <h2>Best Pump:</h2>
                <p>Model: ${data.model}</p>
                <p>Series: ${data.series}</p>
                <p>Total Price: $${data.total_price}</p>
                <a href="${data.pdf_url}" download>Download PDF Quote</a>
                <p>Email Status: ${data.email_status}</p>
            `;
        }
    } catch (error) {
        console.error("Error:", error);
        const resultDiv = document.getElementById("result");
        resultDiv.innerHTML = `<p style="color: red;">An error occurred. Please check the console for details.</p>`;
    }
});