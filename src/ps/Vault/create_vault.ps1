# Using Azure CLI
# This should work with azure CLI. it doesn't work with local powershell
keyVaultName='Nomura vault kapil'
resourceGroupName='Nomura Service India Pvt Ltd'
location='eastus'
userPrincipalName='kathurka@kapildev1.onmicrosoft.com'

# Create a resource group
az group create --name $resourceGroupName --location $location

# Create a Key Vault
az keyvault create --name $keyVaultName --resource-group $resourceGroupName --location $location  --enabled-for-template-deployment true
az keyvault set-policy --upn $userPrincipalName --name $keyVaultName --secret-permissions set delete get list

# Create a secret with the name, vmAdminPassword
password=$(openssl rand -base64 32)
echo $password
az keyvault secret set --vault-name $keyVaultName --name 'vmAdminPassword' --value $password