echo $SHELL

# Login
az login -u username -p password
az login -u kathurka@kapildev1.onmicrosoft.com -p KapilIntune@345

# Find 
az find devops
az find blob

# deploy arm template
az group create --name ExampleGroup --location "South Central US"

# with direct parameters
# https://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/template-tutorial-use-parameter-file?tabs=azure-cli
az deployment group create \
  --resource-group user-yuspogttxtpd \
  --template-file azuredeploy.json \
  --parameters adminPassword="admin@123" name=kapil001

# with parameter file
az deployment group create \
  --resource-group user-yuspogttxtpd \
  --template-file azuredeploy.json \
  --parameters azparam.json