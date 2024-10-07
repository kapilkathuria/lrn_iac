$myTeamsWebHook = 'https://prod-29.centralindia.logic.azure.com:443/workflows/fa0dd3bf9f614c9cbf921f4ef5224638/triggers/manual/paths/invoke?api-version=2016-06-01&sp=%2Ftriggers%2Fmanual%2Frun&sv=1.0&sig=y56kS15MT7u8Whg2DsGoDc2EmhMZ3j2XFFzmongQbFc'

# Read and convert JSON file content to a PowerShell object
$json = Get-Content -Path .\src\pa_poc\upal\content.json | ConvertFrom-Json

# Convert the PowerShell object back to JSON string format
$jsonBody = $json | ConvertTo-Json -Depth 10

# Invoke the REST method with the correct JSON string body
$response = Invoke-RestMethod -Method Post -Uri $myTeamsWebHook -Body $jsonBody -ContentType 'application/json' -UseBasicParsing

# Print the response for debugging
$response
