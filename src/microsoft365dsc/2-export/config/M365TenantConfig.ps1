# Generated with Microsoft365DSC version 1.24.124.1
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
)

Configuration M365TenantConfig
{
    param (
    )

    $OrganizationName = $ConfigurationData.NonNodeData.OrganizationName

    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.24.124.1'

    Node localhost
    {
        IntuneDeviceCompliancePolicyWindows10 "IntuneDeviceCompliancePolicyWindows10-TestWindowsCompliance1"
        {
            ActiveFirewallRequired                      = $False;
            AntiSpywareRequired                         = $False;
            AntivirusRequired                           = $False;
            ApplicationId                               = $ConfigurationData.NonNodeData.ApplicationId;
            ApplicationSecret                           = New-Object System.Management.Automation.PSCredential ('ApplicationSecret', (ConvertTo-SecureString $ConfigurationData.NonNodeData.ApplicationSecret -AsPlainText -Force));
            Assignments                                 = @();
            BitLockerEnabled                            = $False;
            CodeIntegrityEnabled                        = $False;
            ConfigurationManagerComplianceRequired      = $False;
            DefenderEnabled                             = $False;
            Description                                 = "Intune Backup test";
            DeviceThreatProtectionEnabled               = $True;
            DeviceThreatProtectionRequiredSecurityLevel = "medium";
            DisplayName                                 = "TestWindowsCompliance1";
            EarlyLaunchAntiMalwareDriverEnabled         = $False;
            Ensure                                      = "Present";
            PasswordBlockSimple                         = $False;
            PasswordRequired                            = $False;
            PasswordRequiredToUnlockFromIdle            = $False;
            PasswordRequiredType                        = "deviceDefault";
            RequireHealthyDeviceReport                  = $False;
            RTPEnabled                                  = $False;
            SecureBootEnabled                           = $False;
            SignatureOutOfDate                          = $False;
            StorageRequireEncryption                    = $False;
            TenantId                                    = $OrganizationName;
            ValidOperatingSystemBuildRanges             = @();
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1
