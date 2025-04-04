// Add this at the very top of your file
console.log('call_api.js loaded');

// Add API base URL constant
const API_BASE_URL = 'http://localhost:5000';

// Add this at the top of your file with other global variables
let pdfUrl = null;
let pdfDownloadButtonTimer = null;
let hasGeneratedPDF = false;

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

// Store pump data globally
let storedPumpData = null;

// Function to handle finding pump
async function callAPI() {
    const form = document.getElementById('pumpForm');
    const resultSection = document.querySelector('.results-section');
    const result = document.getElementById('result');
    const resultContent = document.getElementById('result-content');
    const pdfButton = document.getElementById('getQuotePDF');

    // Add this inside your callAPI function at the start
    console.log('callAPI function called');

    // Reset PDF button state and hasGeneratedPDF flag
    if (pdfButton) {
        pdfButton.style.display = 'none';
        pdfButton.disabled = false;
        pdfButton.innerHTML = 'Get Quote PDF';
    }
    hasGeneratedPDF = false; // Reset the PDF generation state

    // Clear any existing success message container
    const existingContainer = document.getElementById('quote-success-container');
    if (existingContainer) {
        existingContainer.remove();
    }

    // Clear any existing timer
    if (pdfDownloadButtonTimer) {
        clearTimeout(pdfDownloadButtonTimer);
        pdfDownloadButtonTimer = null;
    }

    // Reset PDF URL
    pdfUrl = null;

    // Validate form
    if (!form.checkValidity()) {
        alert('Please fill in all required fields before finding a pump.');
        return;
    }

    // Show loading message
    result.style.display = 'block';
    resultContent.innerHTML = '<p style="text-align: center; padding: 20px;">Finding the best pump for your requirements...</p>';

    try {
        // Collect form data
        const formData = new FormData(form);
        const params = {};
        for (let [key, value] of formData.entries()) {
            params[key] = value;
        }

        // Convert to query string
        const queryString = Object.keys(params)
            .map(key => `${encodeURIComponent(key)}=${encodeURIComponent(params[key])}`)
            .join('&');

        console.log('Sending request to:', `http://localhost:5000/get_pump?${queryString}`);

        // Make API call
        const response = await fetch(`http://localhost:5000/get_pump?${queryString}`);
        const data = await response.json();

        if (data.error) {
            console.error("API Error:", data.error);
            resultContent.innerHTML = `<p style="color: red; padding: 20px;">${data.error}</p>`;
            return;
        }

        // Store the pump data for PDF generation - make sure we get customer name
        const customerName = document.getElementById('customer_name').value;
        storedPumpData = {
            ...data,
            customer_name: customerName, // Get it directly from the form
            email: params.email
        };

        console.log('Received pump data:', storedPumpData);

        // Display the results
        let resultHTML = `
            <div style="background-color: #fff; padding: 15px; border-radius: 5px; margin-bottom: 20px;">
                <h3 style="color: #003A63; margin-bottom: 15px;">Recommended Pump:</h3>
                <p><strong>Model:</strong> ${data.pump_model || data.model}</p>
                <p><strong>Motor:</strong> ${data.want_motor === 'Yes' ? 
                    `${data.motor_type || ''} ${data.motor_power || ''} HP, ${data.phase || ''}` 
                    : 'Without Motor'}</p>
                <p><strong>Series:</strong> ${data.series || ''}</p>
                <p><strong>Base Price:</strong> $${formatNumberWithCommas(data.base_price || 0)}</p>
                
                ${generateOptionalAccessoriesSection(data)}
            </div>
        `;

        resultContent.innerHTML = resultHTML;

        // Show the PDF button after results are displayed
        if (pdfButton) {
            pdfButton.style.display = 'block';
        }

    } catch (error) {
        console.error('Error:', error);
        resultContent.innerHTML = '<p style="color: red; padding: 20px;">Error connecting to server. Please try again.</p>';
    }
}

// Function to handle PDF generation
async function handleGetQuotePDF() {
    try {
        // Check if PDF has already been generated
        if (hasGeneratedPDF) {
            alert('You have already generated a PDF for this quote. Please perform a new search to generate another quote.');
            return;
        }

        // Get the customer's email from the input field
        const userEmail = document.getElementById('user_email').value;
        if (!userEmail) {
            alert('Please enter your email address to receive the quote.');
            return;
        }

        // Validate email format
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(userEmail)) {
            alert('Please enter a valid email address.');
            return;
        }

        // Get the stored pump data
        if (!storedPumpData) {
            alert('Please search for a pump first before generating a quote PDF.');
            return;
        }

        // Add the user's email to the pump data
        storedPumpData.user_email = userEmail;

        // Disable the button while processing
        const pdfButton = document.getElementById('getQuotePDF');
        pdfButton.disabled = true;
        pdfButton.textContent = 'Generating PDF...';

        // Generate PDF and send emails
        const response = await fetch(`${API_BASE_URL}/generate_quote_pdf`, {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({
                pump_data: storedPumpData,
                user_email: userEmail
            })
        });

        if (!response.ok) {
            throw new Error(`Error generating PDF: ${await response.text()}`);
        }

        const data = await response.json();
        
        // Set hasGeneratedPDF to true after successful generation
        hasGeneratedPDF = true;
        
        // Set the PDF URL for download - fix the URL construction
        pdfUrl = `${API_BASE_URL}${data.pdf_url}`;  // data.pdf_url already includes /download_pdf/
        
        // Trigger immediate download
        window.location.href = pdfUrl;
        
        // Create success message with backup download button
        createSuccessMessageAndBackupButton(data.quote_number);

        // Hide the PDF button after successful generation
        if (pdfButton) {
            pdfButton.style.display = 'none';
        }

    } catch (error) {
        console.error('Error generating PDF:', error);
        alert('Error generating PDF. Please try again.');
        
        // Reset the button
        const pdfButton = document.getElementById('getQuotePDF');
        pdfButton.disabled = false;
        pdfButton.textContent = 'Get Quote PDF';
    }
}

// Update the openSupportChat function
function openSupportChat() {
    // Open Aquflow's website in a new tab
    window.open('https://www.aquflow.com/contact-us/', '_blank');
}

// Update the success message HTML in createSuccessMessageAndBackupButton function
function createSuccessMessageAndBackupButton(quoteNumber) {
    // Create or get the container
    let container = document.getElementById('quote-success-container');
    if (!container) {
        container = document.createElement('div');
        container.id = 'quote-success-container';
        // Insert after the Get Quote PDF button
        const getQuoteButton = document.getElementById('getQuotePDF');
        if (getQuoteButton && getQuoteButton.parentNode) {
            getQuoteButton.parentNode.insertBefore(container, getQuoteButton.nextSibling);
        }
    }

    // Create the success message and backup download button
    container.innerHTML = `
        <div style="margin: 20px 0; padding: 15px; background-color: #f8f9fa; border-radius: 5px; text-align: center;">
            <p style="color: #28a745; font-size: 16px; margin-bottom: 10px;">
                ✓ Quote ${quoteNumber} has been generated and sent to your email.
            </p>
            <p style="color: #666; font-size: 14px; margin-bottom: 15px;">
                If you have any issues downloading the quote, please:
            </p>
            <div style="margin-bottom: 15px;">
                <button id="backupDownloadPDF" class="btn btn-outline-primary" style="margin: 5px;">
                    Click here to download again
                </button>
            </div>
            <div style="font-size: 13px; color: #666;">
                <p style="margin: 5px;">Still need help? Contact us:</p>
                <p style="margin: 5px;">
                    <a href="tel:+19497571753" style="color: #007bff; text-decoration: none;">📞 (949) 757-1753</a>
                </p>
                <p style="margin: 5px;">
                    <a href="mailto:sales@acuflow.com" style="color: #007bff; text-decoration: none;">✉️ sales@acuflow.com</a>
                </p>
                <p style="margin: 5px;">
                    <a href="https://www.acuflow.com/contact-acuflow/" target="_blank" style="color: #007bff; text-decoration: none;">💬 Contact Our Team</a>
                </p>
            </div>
        </div>
    `;

    // Add click event listener to the backup download button
    const backupDownloadButton = document.getElementById('backupDownloadPDF');
    if (backupDownloadButton) {
        backupDownloadButton.addEventListener('click', () => {
            if (pdfUrl) {
                window.location.href = pdfUrl;
            } else {
                alert('PDF URL not available. Please try generating the PDF again.');
            }
        });
    }
}

// Add event listeners when the document is loaded
document.addEventListener('DOMContentLoaded', function() {
    console.log('DOM Content Loaded - Setting up event listeners');
    
    // Set up form submission
    const form = document.getElementById('pumpForm');
    if (form) {
        form.onsubmit = function(e) {
            e.preventDefault();
            console.log('Form submitted - calling API');
            callAPI();
        };
    }

    // Set up PDF button
    const pdfButton = document.getElementById('getQuotePDF');
    if (pdfButton) {
        pdfButton.style.display = 'none';
        pdfButton.addEventListener('click', handleGetQuotePDF);
    }
});

// Helper functions for generating HTML and formatting prices
function generateOptionalAccessoriesHTML(data) {
    // Your existing optional accessories HTML generation code
    // ... (keep your existing code for this)
}

function formatFinalPrice(data) {
    // Your existing price formatting code
    // ... (keep your existing code for this)
}

// Add this near the top of your file with other event listeners
document.addEventListener('DOMContentLoaded', function() {
    // Initial setup
    const wantMotorSelect = document.getElementById('want_motor');
    const motorOptions = document.querySelectorAll('.motor-option');
    
    // Function to toggle motor options visibility
    function toggleMotorOptions() {
        const showMotorOptions = wantMotorSelect.value === 'Yes';
        motorOptions.forEach(option => {
            option.style.display = showMotorOptions ? 'block' : 'none';
            // Make fields required only when visible
            const select = option.querySelector('select');
            if (select) {
                select.required = showMotorOptions;
            }
        });
    }

    // Set up event listener for want_motor changes
    wantMotorSelect.addEventListener('change', toggleMotorOptions);
    
    // Initial check on page load
    toggleMotorOptions();
});

// Add this function near other helper functions
function formatNumberWithCommas(number) {
    // Handle case when number is a string
    if (typeof number === 'string') {
        number = parseFloat(number);
    }
    // Only format if it's actually a number
    if (!isNaN(number)) {
        return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
    }
    return number;
}

// Add this function to generate the optional accessories section
function generateOptionalAccessoriesSection(data) {
    // Create array of accessory HTML strings
    const accessories = [
        data.spare_parts_kit === 'Yes' ? 
            `<p>Spare Parts Kit ${data.spare_parts_kit_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.spare_parts_kit_price || 0)}`}</p>` 
            : '',
        data.degassing === 'Yes' ? 
            `<p>Degassing Valve ${data.degassing_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.degassing_price || 0)}`}</p>` 
            : '',
        data.back_pressure_valve === 'Yes' ? 
            `<p>Back Pressure Valve ${data.back_pressure_valve_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.back_pressure_valve_price || 0)}`}</p>` 
            : '',
        data.pressure_relief_valve === 'Yes' ? 
            `<p>Pressure Relief Valve ${data.pressure_relief_valve_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.pressure_relief_valve_price || 0)}`}</p>` 
            : '',
        data.pulsation_dampener === 'Yes' ? 
            `<p>Pulsation Dampener ${data.pulsation_dampener_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.pulsation_dampener_price || 0)}`}</p>` 
            : '',
        data.calibration_column === 'Yes' ? 
            `<p>Calibration Column ${data.calibration_column_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.calibration_column_price || 0)}`}</p>` 
            : '',
        data.pressure_gauge === 'Yes' ? 
            `<p>Pressure Gauge ${data.pressure_gauge_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.pressure_gauge_price || 0)}`}</p>` 
            : '',
        data.ecca === 'Yes' ? 
            `<p>ECCA ${data.ecca_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.ecca_price || 0)}`}</p>` 
            : '',
        data.vfd === 'Yes' ? 
            `<p>VFD ${data.vfd_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.vfd_price || 0)}`}</p>` 
            : '',
        data.leak_detection && data.leak_detection !== 'No' ? 
            `<p>Leak Detection System: ${data.leak_detection} ${data.relay_option === 'Yes' ? 'with Relay' : 'without Relay'} ${data.leak_detection_price === "C/F" ? "C/F" : `$${formatNumberWithCommas(data.leak_detection_price || 0)}`}</p>` 
            : ''
    ].filter(item => item !== ''); // Remove empty strings

    // Only return the section if there are accessories to show
    if (accessories.length > 0) {
        return `
            <!-- Optional Accessories Section -->
            <div style="margin-top: 20px;">
                <h4 style="color: #666;">Optional Accessories:</h4>
                ${accessories.join('')}
            </div>
        `;
    }
    
    // Return empty string if no accessories
    return '';
}