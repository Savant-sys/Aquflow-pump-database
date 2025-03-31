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

// Update your existing leak detection event listener to use the new ID
document.getElementById('leak_detection').addEventListener('change', function() {
    const relayOptionGroup = document.getElementById('relay-option-group');
    if (this.value === 'Conductive') {
        relayOptionGroup.style.display = 'block';
    } else {
        relayOptionGroup.style.display = 'none';
        document.getElementById('relay_option').value = 'No'; // Reset to No when not Conductive
    }
});

// Add this function to handle the download
function downloadPDF(pdfUrl) {
    window.location.href = pdfUrl;
}

// Add these variables at the top of your file
let currentPdfUrl = null;
let currentFormData = null;

// Update the callAPI function while keeping original display logic
function callAPI() {
    const form = document.getElementById('pumpForm');
    const resultContent = document.getElementById('result-content');
    const result = document.getElementById('result');
    
    // Validate form
    if (!form.checkValidity()) {
        alert('Please fill in all required fields before finding a pump.');
        return;
    }

    // Show loading message
    resultContent.innerHTML = '<p style="text-align: center;">Finding the best pump for your requirements...</p>';
    result.style.display = 'block';
    document.getElementById('get-quote-button').style.display = 'none';

    // Collect all form data
    const formData = new FormData(form);
    const params = {};
    for (let [key, value] of formData.entries()) {
        params[key] = value;
    }
    currentFormData = params;

    // Convert parameters to query string
    const queryString = Object.keys(params)
        .map(key => `${encodeURIComponent(key)}=${encodeURIComponent(params[key])}`)
        .join('&');

    // First API call to get pump data
    fetch(`http://localhost:5000/get_pump?${queryString}`, {
        method: 'GET',
        headers: {
            'Accept': 'application/json',
        }
    })
    .then(response => response.json())
    .then(data => {
        if (!resultContent) {
            console.error("Result content div not found!");
            return;
        }
        
        if (data.error) {
            console.error("API Error:", data.error);
            resultContent.innerHTML = `<p style="color: red;">${data.error}</p>`;
            document.getElementById('get-quote-button').style.display = 'none';
        } else {
            // Store the PDF URL for later use
            currentPdfUrl = `http://localhost:5000${data.pdf_url}`;

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
                ? `$${Math.ceil(data.final_total_price)}${cfText}`
                : (data.final_total_price.startsWith('$') 
                    ? '$' + Math.ceil(parseFloat(data.final_total_price.replace('$', ''))) + cfText
                    : data.final_total_price + cfText);

            // Build the HTML for optional accessories
            let optionalAccessoriesHtml = '';
            
            // Spare Parts Kit
            if (data.spare_parts_kit === "Yes") {
                optionalAccessoriesHtml += `
                    <p><strong>Spare Parts Kit:</strong> ${data.spare_parts_kit_price === "C/F" ? "C/F" : `$${data.spare_parts_kit_price}`}
                    <br>${data.spare_parts_kit_message || ''}</p>`;
            }

            // Back Pressure Valve
            if (data.back_pressure_valve === "Yes") {
                optionalAccessoriesHtml += `
                    <p><strong>Back Pressure Valve:</strong> ${data.back_pressure_valve_price === "C/F" ? "C/F" : `$${data.back_pressure_valve_price}`}
                    <br>${data.back_pressure_valve_message || ''}</p>`;
            }

            // Pressure Relief Valve
            if (data.pressure_relief_valve === "Yes") {
                optionalAccessoriesHtml += `
                    <p><strong>Pressure Relief Valve:</strong> ${data.pressure_relief_valve_price === "C/F" ? "C/F" : `$${data.pressure_relief_valve_price}`}
                    <br>${data.pressure_relief_valve_message || ''}</p>`;
            }

            // Pulsation Dampener
            if (data.pulsation_dampener === "Yes") {
                optionalAccessoriesHtml += `
                    <p><strong>Pulsation Dampener:</strong> ${data.pulsation_dampener_price === "C/F" ? "C/F" : `$${data.pulsation_dampener_price}`}
                    <br>${data.pulsation_dampener_message || ''}</p>`;
            }

            // Calibration Column
            if (data.calibration_column === "Yes") {
                optionalAccessoriesHtml += `
                    <p><strong>Calibration Column:</strong> $${data.calibration_column_price}
                    <br>${data.calibration_column_info || ''}</p>`;
            }

            // Pressure Gauge
            if (data.pressure_gauge === "Yes") {
                optionalAccessoriesHtml += `
                    <p><strong>Pressure Gauge:</strong> ${data.pressure_gauge_price === "C/F" ? "C/F" : `$${data.pressure_gauge_price}`}
                    <br>${data.pressure_gauge_info || ''}</p>`;
            }

            // ECCA
            if (data.ecca === "Yes") {
                optionalAccessoriesHtml += `
                    <p><strong>ECCA:</strong> $${data.ecca_price}</p>`;
            }

            // VFD
            if (data.vfd === "Yes") {
                optionalAccessoriesHtml += `
                    <p><strong>VFD:</strong> $${data.vfd_price}</p>`;
            }

            // Leak Detection System
            if (data.leak_detection !== 'No') {
                const leakDetectionText = data.leak_detection === 'Conductive' 
                    ? `Conductive ${data.relay_option === 'Yes' ? 'with' : 'without'} Relay` 
                    : data.leak_detection;
                const leakDetectionPrice = data.leak_detection_price === 'C/F' 
                    ? 'C/F' 
                    : '$' + (
                        data.leak_detection_price + 
                        (data.leak_detection === 'Conductive' && data.relay_option === 'Yes' ? 889 : 0)
                    );
                optionalAccessoriesHtml += `<p><strong>Leak Detection System:</strong> ${leakDetectionText} (${leakDetectionPrice})</p>`;
            }

            // Display the results with all details
            resultContent.innerHTML = `
                <div style="background-color: #fff; padding: 15px; border-radius: 5px;">
                    <h3 style="color: #28a745; margin-bottom: 15px;">Recommended Pump:</h3>
                    <p><strong>Model:</strong> ${data.model}</p>
                    <p><strong>Series:</strong> ${data.series}</p>
                    <p><strong>Base Price:</strong> $${data.base_price}</p>
                    
                    ${optionalAccessoriesHtml ? `
                        <h4 style="margin-top: 20px; color: #28a745;">Optional Accessories:</h4>
                        ${optionalAccessoriesHtml}
                        <p><strong>Optional Accessories Total:</strong> $${data.optional_accessories_total_price}</p>
                    ` : ''}
                    <h4 style="margin-top: 20px; color: #28a745;">FINAL PRICE:</h4>
                    <p><strong>Final Total Price:</strong> ${formattedFinalTotal}</p>
                    
                    <p style="margin-top: 15px; color: #666; font-style: italic;">
                        If you would like to receive this quote as a PDF, click the "Get Quote PDF" button below.
                    </p>
                </div>
            `;

            // Show the result section and the "Get Quote PDF" button
            result.style.display = 'block';
            document.getElementById('get-quote-button').style.display = 'block';
            document.getElementById('get-quote-button').disabled = false;
        }
    })
    .catch(error => {
        resultContent.innerHTML = `<p style="color: #dc3545;">Error connecting to server: ${error}</p>`;
        document.getElementById('get-quote-button').style.display = 'none';
    });
}

// Update the getQuotePDF function to handle the full URL
function getQuotePDF() {
    if (!currentPdfUrl) {
        alert('Please wait for the quote to be generated first.');
        return;
    }

    // Show loading message
    const emailStatus = document.getElementById('email-status');
    emailStatus.innerHTML = '<p style="color: #007bff;">Processing your request...</p>';
    document.getElementById('download-section').style.display = 'block';

    // Trigger the download using the full URL
    window.location.href = currentPdfUrl;

    // Show success message
    emailStatus.innerHTML = `
        <div style="color: #28a745; margin-top: 10px; padding: 10px; background-color: #fff; border-radius: 5px;">
            <p>✓ PDF has been downloaded to your computer</p>
            ${currentFormData.user_email ? `<p>✓ Quote has been sent to ${currentFormData.user_email}</p>` : ''}
        </div>
    `;

    // Disable the "Get Quote PDF" button after use
    document.getElementById('get-quote-button').disabled = true;
}

// Form submission handler
document.getElementById('pumpForm').onsubmit = function(e) {
    e.preventDefault();
    callAPI();
};