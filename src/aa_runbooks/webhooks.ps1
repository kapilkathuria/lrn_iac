# https://learn.microsoft.com/en-us/training/modules/explore-azure-automation-devops/6-examine-webhooks

# Setup automation account, then a runbook and then a webhook
# below is webhook. call this with post method will invoke the runbook
Invoke-WebRequest -Method Post -Uri 'https://1bf6b428-5203-4384-9f14-13ce36c0e82b.webhook.eus.azure-automation.net/webhooks?token=9cKPAR%2fL9uOubmAgL4hDfdQ8rfvHcy44EDQQQn8hEoc%3d'