# https://github.com/almenscorner/IntuneCD/wiki

# For ccin Azure - intune is not configured correctly for this one
# client id: 484111d8-5abc-4c33-aa81-3e54ff7074a0
# tenant id: 64fdebf2-09d4-4752-8917-c9f27426ae33

# for kakathur
# client id: 379246f4-c0f6-4364-b60d-f45793394bf1
# tenant id: ceae8fd9-13cc-4787-85fe-508f69df9180


# backup with local auth file. This requires registering app in Entra and giving required 
# permission in Graph API, as per https://github.com/almenscorner/IntuneCD/wiki
IntuneCD-startbackup.exe `
--localauth C:\Users\kapil\projects\lrn_iac\src\IntuneCD\auth.json `
--mode 1 `
--path C:\Users\kapil\projects\lrn_iac\src\IntuneCD\

# backup with interactive login
IntuneCD-startbackup.exe `
--mode 1 `
--interactive `
--path C:\Users\kapil\projects\lrn_iac\src\IntuneCD\