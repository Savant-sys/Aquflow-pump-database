<?php
// Allow requests from your domain (replace with your actual domain)
header("Access-Control-Allow-Origin: https://acuflow.com");
header("Content-Type: application/json");

// Your hidden Heroku API URL (replace with your actual Heroku URL)
$heroku_url = "https://quote-api-server-95d1a0cadf67.herokuapp.com/get_pump";

// Forward all GET parameters to Heroku
if (!empty($_SERVER['QUERY_STRING'])) {
    $heroku_url .= '?' . $_SERVER['QUERY_STRING'];
}

// Fetch data from Heroku
$response = file_get_contents($heroku_url);

// Return the response
echo $response;
?>