document.getElementById("pumpForm").addEventListener("submit", async (e) => {
    e.preventDefault();

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

    // Call the API
    const response = await fetch(
        `https://your-api-url.com/get_pump?gph=${gph}&psi=${psi}&hz=${hz}&simplex_duplex=${simplex_duplex}&want_motor=${want_motor}&motor_type=${motor_type}&motor_power=${motor_power}&spm=${spm}&diaphragm=${diaphragm}&liquid_end_material=${liquid_end_material}`
    );
    const data = await response.json();

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
});