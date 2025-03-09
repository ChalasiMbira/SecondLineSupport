s# This script sends a GET request to a public API and displays the response data.
# It uses Invoke-RestMethod to fetch JSON data and parse it.

# Define the API URL
$apiURL = "https://jsonplaceholder.typicode.com/posts/1"

# Send GET request to API
$response = Invoke-RestMethod -Uri $apiURL -Method Get

# Display response data
Write-Host "Response from API:" -ForegroundColor Green
$response | Format-List

# Save response to a JSON file
$response | ConvertTo-Json | Out-File -FilePath "api_response.json"

Write-Host "✅ API request completed. Data saved to 'api_response.json'"

# GitHub Auto-Push Function
function Push-To-GitHub {
    Set-Location "C:\Path\To\Your\GitHub\Repo"
    git add .
    git commit -m "Added REST API Request Lab"
    git push origin main
    Write-Host "✅ Changes pushed to GitHub successfully!"
}

# Automatically push changes after execution
Push-To-GitHub
