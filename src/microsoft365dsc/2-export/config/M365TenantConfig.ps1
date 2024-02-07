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
        IntuneAntivirusPolicyWindows10SettingCatalog "IntuneAntivirusPolicyWindows10SettingCatalog-Defender policy update IBT"
        {
            ApplicationId                      = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments                        = @(
                MSFT_DeviceManagementConfigurationPolicyAssignments{
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    dataType = '#microsoft.graph.allDevicesAssignmentTarget'
                }
            );
            CertificateThumbprint              = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description                        = "Defender policy update for intune backup test";
            DisplayName                        = "Defender policy update IBT";
            Ensure                             = "Present";
            Identity                           = "c673d4fd-675b-4e39-851f-2995af6772f9";
            securityintelligenceupdateschannel = "5";
            templateId                         = "e3f74c5a-a6de-411d-aef6-eb15628f3a0a_1";
            TenantId                           = $OrganizationName;
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1
