console.log("Script loaded!"); // Debugging log

// Prevent form submission on Enter key
document.getElementById("pumpForm").addEventListener("keydown", (e) => {
    if (e.key === "Enter") {
        e.preventDefault(); // Prevent form submission on Enter key
        console.log("Enter key prevented from submitting form!");
    }
});

// Attach submit event listener to the form
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

    console.log("Form Data:", {
        gph, psi, hz, simplex_duplex, want_motor, motor_type, motor_power, spm, diaphragm, liquid_end_material
    });

    try {
        // Call the API
        const apiUrl = `http://localhost:5000/get_pump?gph=${gph}&psi=${psi}&hz=${hz}&simplex_duplex=${simplex_duplex}&want_motor=${want_motor}&motor_type=${motor_type}&motor_power=${motor_power}&spm=${spm}&diaphragm=${diaphragm}&liquid_end_material=${liquid_end_material}`;
        console.log("API URL:", apiUrl);

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
            `;
        }
    } catch (error) {
        console.error("Error:", error);
        const resultDiv = document.getElementById("result");
        resultDiv.innerHTML = `<p style="color: red;">An error occurred. Please check the console for details.</p>`;
    }
});

console.log("Event listener attached!"); // Debugging log