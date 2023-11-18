connect-azaccount

# deploy arm template
New-AzResourceGroupDeployment -Name kapilSQL01 `
  -ResourceGroupName user-xlsyuyvsudmb  `
  -TemplateFile azuredeploy.json `
  -adminPassword "admin@123"