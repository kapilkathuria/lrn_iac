connect-azaccount

# deploy arm template
New-AzResourceGroupDeployment -Name kapilSQL01 `
  -ResourceGroupName user-xlsyuyvsudmb  `
  -TemplateFile azuredeploy.json `
  -adminPassword "admin@123"

# create service principal to run devops pipeline
az ad sp create-for-rbac --name myServicePrincipalName --role contributor --scopes /subscriptions/20dee651-2571-4e5f-bcb7-5b85d98d8b81