# Run with elevated privlages
. .\env.ps1

# Create a local non-admin user
$username = "unopal2"
$password = ConvertTo-SecureString $env:PASSWORD -AsPlainText -Force


# Create the new user
New-LocalUser -Name $username -Password $password `
  -FullName "unopal2 User" -Description "Local non-admin user" `
  -UserMayNotChangePassword -PasswordNeverExpires

# Add the user to the "Users" group
Add-LocalGroupMember -Group "Users" -Member $username

# Ensure they are not in the Administrators group
# Remove-LocalGroupMember -Group "Administrators" -Member $username
