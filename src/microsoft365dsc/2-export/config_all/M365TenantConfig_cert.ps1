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
        IntuneDeviceCleanupRule "IntuneDeviceCleanupRule"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Enabled               = $False;
            Ensure                = "Present";
            IsSingleInstance      = "Yes";
            TenantId              = $OrganizationName;
        }
        IntuneDeviceCompliancePolicyWindows10 "IntuneDeviceCompliancePolicyWindows10-Intunebacktest"
        {
            ActiveFirewallRequired                      = $False;
            AntiSpywareRequired                         = $False;
            AntivirusRequired                           = $False;
            ApplicationId                               = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments                                 = @();
            BitLockerEnabled                            = $False;
            CertificateThumbprint                       = $ConfigurationData.NonNodeData.CertificateThumbprint;
            CodeIntegrityEnabled                        = $False;
            ConfigurationManagerComplianceRequired      = $False;
            DefenderEnabled                             = $False;
            Description                                 = "Testing intune backup";
            DeviceThreatProtectionEnabled               = $False;
            DeviceThreatProtectionRequiredSecurityLevel = "unavailable";
            DisplayName                                 = "Intunebacktest";
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
        IntuneDeviceEnrollmentLimitRestriction "IntuneDeviceEnrollmentLimitRestriction-All users and all devices"
        {
            ApplicationId         = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description           = "This is the default Device Limit Restriction applied with the lowest priority to all users regardless of group membership.";
            DisplayName           = "All users and all devices";
            Ensure                = "Present";
            Limit                 = 5;
            TenantId              = $OrganizationName;
        }
        IntuneDeviceEnrollmentPlatformRestriction "IntuneDeviceEnrollmentPlatformRestriction-All users and all devices"
        {
            AndroidForWorkRestriction         = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            AndroidRestriction                = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            ApplicationId                     = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments                       = @(
                MSFT_DeviceManagementConfigurationPolicyAssignments{
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    dataType = '#microsoft.graph.allDevicesAssignmentTarget'
                }
            );
            CertificateThumbprint             = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description                       = "This is the default Device Type Restriction applied with the lowest priority to all users regardless of group membership.";
            DeviceEnrollmentConfigurationType = "platformRestrictions";
            DisplayName                       = "All users and all devices";
            Ensure                            = "Present";
            Identity                          = "17c3c3b7-8c1e-4914-aaef-6b097c574cbd_DefaultPlatformRestrictions";
            IosRestriction                    = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            MacOSRestriction                  = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            MacRestriction                    = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            TenantId                          = $OrganizationName;
            WindowsHomeSkuRestriction         = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            WindowsRestriction                = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
        }
        IntuneDeviceEnrollmentStatusPageWindows10 "IntuneDeviceEnrollmentStatusPageWindows10-All users and all devices"
        {
            AllowDeviceResetOnInstallFailure        = $False;
            AllowDeviceUseOnInstallFailure          = $False;
            AllowLogCollectionOnInstallFailure      = $False;
            AllowNonBlockingAppInstallation         = $False;
            ApplicationId                           = $ConfigurationData.NonNodeData.ApplicationId;
            Assignments                             = @(
                MSFT_DeviceManagementConfigurationPolicyAssignments{
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    dataType = '#microsoft.graph.allDevicesAssignmentTarget'
                }
            );
            BlockDeviceSetupRetryByUser             = $True;
            CertificateThumbprint                   = $ConfigurationData.NonNodeData.CertificateThumbprint;
            CustomErrorMessage                      = "";
            Description                             = "This is the default enrollment status screen configuration applied with the lowest priority to all users and all devices regardless of group membership.";
            DisableUserStatusTrackingAfterFirstUser = $False;
            DisplayName                             = "All users and all devices";
            Ensure                                  = "Present";
            Id                                      = "17c3c3b7-8c1e-4914-aaef-6b097c574cbd_DefaultWindows10EnrollmentCompletionPageConfiguration";
            InstallProgressTimeoutInMinutes         = 0;
            InstallQualityUpdates                   = $False;
            Priority                                = 0;
            SelectedMobileAppIds                    = @();
            ShowInstallationProgress                = $False;
            TenantId                                = $OrganizationName;
            TrackInstallProgressForAutopilotOnly    = $False;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-Policy and Profile manager"
        {
            allowedResourceActions    = @("Microsoft.Intune_Organization_Read","Microsoft.Intune_DeviceConfigurations_Create","Microsoft.Intune_DeviceConfigurations_Read","Microsoft.Intune_DeviceConfigurations_Update","Microsoft.Intune_DeviceConfigurations_Delete","Microsoft.Intune_DeviceConfigurations_Assign","Microsoft.Intune_DeviceConfigurations_ViewReports","Microsoft.Intune_DeviceCompliancePolices_Create","Microsoft.Intune_DeviceCompliancePolices_Read","Microsoft.Intune_DeviceCompliancePolices_ViewReports","Microsoft.Intune_DeviceCompliancePolices_Update","Microsoft.Intune_DeviceCompliancePolices_Delete","Microsoft.Intune_DeviceCompliancePolices_Assign","Microsoft.Intune_EnrollmentProgramToken_Create","Microsoft.Intune_EnrollmentProgramToken_Read","Microsoft.Intune_EnrollmentProgramToken_Update","Microsoft.Intune_EnrollmentProgramToken_Delete","Microsoft.Intune_AppleEnrollmentProfiles_Create","Microsoft.Intune_AppleEnrollmentProfiles_Read","Microsoft.Intune_AppleEnrollmentProfiles_Update","Microsoft.Intune_AppleEnrollmentProfiles_Delete","Microsoft.Intune_AppleEnrollmentProfiles_Assign","Microsoft.Intune_AppleDeviceSerialNumbers_Create","Microsoft.Intune_AppleDeviceSerialNumbers_Read","Microsoft.Intune_AppleDeviceSerialNumbers_Update","Microsoft.Intune_AppleDeviceSerialNumbers_Delete","Microsoft.Intune_CorporateDeviceIdentifiers_Create","Microsoft.Intune_CorporateDeviceIdentifiers_Read","Microsoft.Intune_CorporateDeviceIdentifiers_Update","Microsoft.Intune_CorporateDeviceIdentifiers_Delete","Microsoft.Intune_ManagedApps_Create","Microsoft.Intune_ManagedApps_Read","Microsoft.Intune_ManagedApps_Update","Microsoft.Intune_ManagedApps_Delete","Microsoft.Intune_ManagedApps_Assign","Microsoft.Intune_AndroidSync_Read","Microsoft.Intune_AndroidSync_UpdateEnrollmentProfiles","Microsoft.Intune_AndroidSync_UpdateOnboarding","Microsoft.Intune_AndroidSync_UpdateApps","Microsoft.Intune_Audit_Read","Microsoft.Intune_PolicySets_Assign","Microsoft.Intune_PolicySets_Create","Microsoft.Intune_PolicySets_Delete","Microsoft.Intune_PolicySets_Read","Microsoft.Intune_PolicySets_Update","Microsoft.Intune_AssignmentFilter_Create","Microsoft.Intune_AssignmentFilter_Delete","Microsoft.Intune_AssignmentFilter_Read","Microsoft.Intune_AssignmentFilter_Update","Microsoft.Intune_MicrosoftDefenderATP_Read","Microsoft.Intune_PartnerDeviceManagement_Read","Microsoft.Intune_MobileThreatDefense_Read","Microsoft.Intune_CertificateConnector_Read","Microsoft.Intune_DerivedCredentials_Read","Microsoft.Intune_AndroidFota_Read","Microsoft.Intune_QuietTimePolicies_Create","Microsoft.Intune_QuietTimePolicies_Read","Microsoft.Intune_QuietTimePolicies_Update","Microsoft.Intune_QuietTimePolicies_Delete","Microsoft.Intune_QuietTimePolicies_Assign","Microsoft.Intune_QuietTimePolicies_ViewReports","Microsoft.Intune_CloudAttach_ResourceExplorer","Microsoft.Intune_CloudAttach_ClientDetails","Microsoft.Intune_CloudAttach_Timeline","Microsoft.Intune_CloudAttach_Collections","Microsoft.Intune_CloudAttach_Applications","Microsoft.Intune_CloudAttach_Scripts","Microsoft.Intune_CloudAttach_SoftwareUpdates","Microsoft.Intune_WindowsOSRecovery_Create","Microsoft.Intune_WindowsOSRecovery_Read","Microsoft.Intune_WindowsOSRecovery_Update","Microsoft.Intune_WindowsOSRecovery_Delete","Microsoft.Intune_WindowsOSRecovery_Assign");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "Policy and Profile Managers manage compliance policy, configuration profiles, Apple enrollment, Android Enterprise enrollment profiles and corporate device identifiers.";
            DisplayName               = "Policy and Profile manager";
            Ensure                    = "Present";
            Id                        = "0bd113fe-6be5-400c-a28f-ae5553f9c0be";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-Intune Role Administrator"
        {
            allowedResourceActions    = @("Microsoft.Intune_Organization_Read","Microsoft.Intune_Roles_Create","Microsoft.Intune_Roles_Read","Microsoft.Intune_Roles_Update","Microsoft.Intune_Roles_Delete","Microsoft.Intune_Roles_Assign");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "Intune Role Administrators manage custom Intune roles and add assignments for built-in Intune roles. It is the only Intune role that can assign permissions to Administrators.";
            DisplayName               = "Intune Role Administrator";
            Ensure                    = "Present";
            Id                        = "fb2603eb-3c87-4be3-8b5b-d58a5b4a0bc0";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-Endpoint Security Manager"
        {
            allowedResourceActions    = @("Microsoft.Intune_MobileApps_Read","Microsoft.Intune_TermsAndConditions_Read","Microsoft.Intune_ManagedApps_Read","Microsoft.Intune_ManagedDevices_Delete","Microsoft.Intune_ManagedDevices_Read","Microsoft.Intune_ManagedDevices_Update","Microsoft.Intune_ManagedDevices_SetPrimaryUser","Microsoft.Intune_ManagedDevices_ViewReports","Microsoft.Intune_DeviceConfigurations_Read","Microsoft.Intune_DeviceConfigurations_ViewReports","Microsoft.Intune_DeviceCompliancePolices_Create","Microsoft.Intune_DeviceCompliancePolices_Read","Microsoft.Intune_DeviceCompliancePolices_ViewReports","Microsoft.Intune_DeviceCompliancePolices_Update","Microsoft.Intune_DeviceCompliancePolices_Delete","Microsoft.Intune_DeviceCompliancePolices_Assign","Microsoft.Intune_TelecomExpenses_Read","Microsoft.Intune_RemoteAssistance_Read","Microsoft.Intune_RemoteAssistance_ViewReports","Microsoft.Intune_Organization_Read","Microsoft.Intune_EndpointProtection_Read","Microsoft.Intune_EnrollmentProgramToken_Read","Microsoft.Intune_AppleEnrollmentProfiles_Read","Microsoft.Intune_AppleDeviceSerialNumbers_Read","Microsoft.Intune_DeviceEnrollmentManagers_Read","Microsoft.Intune_CorporateDeviceIdentifiers_Read","Microsoft.Intune_Roles_Read","Microsoft.Intune_Reports_Read","Microsoft.Intune_AndroidSync_Read","Microsoft.Intune_Audit_Read","Microsoft.Intune_RemoteTasks_ConfigurationManagerAction","Microsoft.Intune_RemoteTasks_GetFileVaultKey","Microsoft.Intune_RemoteTasks_RebootNow","Microsoft.Intune_RemoteTasks_RemoteLock","Microsoft.Intune_RemoteTasks_RotateBitLockerKeys","Microsoft.Intune_RemoteTasks_RotateFileVaultKey","Microsoft.Intune_RemoteTasks_ShutDown","Microsoft.Intune_RemoteTasks_SyncDevice","Microsoft.Intune_RemoteTasks_WindowsDefender","Microsoft.Intune_SecurityBaselines_Create","Microsoft.Intune_SecurityBaselines_Read","Microsoft.Intune_SecurityBaselines_Update","Microsoft.Intune_SecurityBaselines_Delete","Microsoft.Intune_SecurityBaselines_Assign","Microsoft.Intune_SecurityTasks_Read","Microsoft.Intune_SecurityTasks_Update","Microsoft.Intune_PolicySets_Read","Microsoft.Intune_AssignmentFilter_Read","Microsoft.Intune_EndpointAnalytics_Read","Microsoft.Intune_MicrosoftDefenderATP_Read","Microsoft.Intune_MicrosoftStoreForBusiness_Read","Microsoft.Intune_WindowsEnterpriseCertificate_Read","Microsoft.Intune_PartnerDeviceManagement_Read","Microsoft.Intune_MobileThreatDefense_Read","Microsoft.Intune_MobileThreatDefense_Modify","Microsoft.Intune_CertificateConnector_Read","Microsoft.Intune_DerivedCredentials_Read","Microsoft.Intune_Customization_Read","Microsoft.Intune_AndroidFota_Read","Microsoft.Intune_CloudAttach_ResourceExplorer","Microsoft.Intune_CloudAttach_ClientDetails","Microsoft.Intune_CloudAttach_Timeline","Microsoft.Intune_CloudAttach_Collections","Microsoft.Intune_CloudAttach_CMPivot","Microsoft.Intune_CloudAttach_Scripts","Microsoft.Intune_CloudAttach_SoftwareUpdates","Microsoft.Intune_EpmPolicy_Create","Microsoft.Intune_EpmPolicy_Read","Microsoft.Intune_EpmPolicy_Update","Microsoft.Intune_EpmPolicy_Delete","Microsoft.Intune_EpmPolicy_Assign","Microsoft.Intune_EpmPolicy_ViewReports","Microsoft.Intune_EpmPolicy_ViewElevationRequests","Microsoft.Intune_EpmPolicy_ModifyElevationRequests");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "Manages security and compliance features such as security baselines, device compliance, conditional access, and Microsoft Defender ATP.";
            DisplayName               = "Endpoint Security Manager";
            Ensure                    = "Present";
            Id                        = "c56d53a2-73d0-4502-b6bd-4a9d3dba28d5";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-School Administrator"
        {
            allowedResourceActions    = @("Microsoft.Intune_AppleDeviceSerialNumbers_Delete","Microsoft.Intune_AppleDeviceSerialNumbers_Read","Microsoft.Intune_AppleDeviceSerialNumbers_Update","Microsoft.Intune_AppleEnrollmentProfiles_Assign","Microsoft.Intune_AppleEnrollmentProfiles_Create","Microsoft.Intune_AppleEnrollmentProfiles_Delete","Microsoft.Intune_AppleEnrollmentProfiles_Read","Microsoft.Intune_AppleEnrollmentProfiles_Update","Microsoft.Intune_Audit_Read","Microsoft.Intune_DeviceConfigurations_Assign","Microsoft.Intune_DeviceConfigurations_Create","Microsoft.Intune_DeviceConfigurations_Delete","Microsoft.Intune_DeviceConfigurations_Read","Microsoft.Intune_DeviceConfigurations_Update","Microsoft.Intune_DeviceEnrollmentManagers_Read","Microsoft.Intune_DeviceEnrollmentManagers_Update","Microsoft.Intune_EnrollmentProgramToken_Create","Microsoft.Intune_EnrollmentProgramToken_Delete","Microsoft.Intune_EnrollmentProgramToken_Read","Microsoft.Intune_EnrollmentProgramToken_Update","Microsoft.Intune_ManagedApps_Create","Microsoft.Intune_ManagedApps_Delete","Microsoft.Intune_ManagedApps_Read","Microsoft.Intune_ManagedApps_Update","Microsoft.Intune_ManagedDevices_Delete","Microsoft.Intune_ManagedDevices_Read","Microsoft.Intune_ManagedDevices_Update","Microsoft.Intune_ManagedDevices_SetPrimaryUser","Microsoft.Intune_MobileApps_Assign","Microsoft.Intune_MobileApps_Create","Microsoft.Intune_MobileApps_Delete","Microsoft.Intune_MobileApps_Read","Microsoft.Intune_MobileApps_Update","Microsoft.Intune_MobileApps_Relate","Microsoft.Intune_Organization_Read","Microsoft.Intune_RemoteTasks_CleanPC","Microsoft.Intune_RemoteTasks_DisableLostMode","Microsoft.Intune_RemoteTasks_EnableLostMode","Microsoft.Intune_RemoteTasks_LocateDevice","Microsoft.Intune_RemoteTasks_PlayLostModeSound","Microsoft.Intune_RemoteTasks_RebootNow","Microsoft.Intune_RemoteTasks_RemoteLock","Microsoft.Intune_RemoteTasks_ResetPasscode","Microsoft.Intune_RemoteTasks_Retire","Microsoft.Intune_RemoteTasks_SetDeviceName","Microsoft.Intune_RemoteTasks_SyncDevice","Microsoft.Intune_RemoteTasks_Wipe","Microsoft.Intune_RemoteTasks_ActivateDeviceEsim","Microsoft.Intune_RemoteTasks_RequestRemoteAssistance","Microsoft.Intune_RemoteTasks_InitiateMDMKeyRecovery","Microsoft.Intune_RemoteTasks_InitiateDeviceAttestation","Microsoft.Intune_RemoteTasks_OnDemandProactiveRemediation","Microsoft.Intune_Reports_Read","Microsoft.Intune_PolicySets_Assign","Microsoft.Intune_PolicySets_Create","Microsoft.Intune_PolicySets_Delete","Microsoft.Intune_PolicySets_Read","Microsoft.Intune_PolicySets_Update","Microsoft.Intune_RemoteTasks_ConfigurationManagerAction","Microsoft.Intune_RemoteTasks_DeviceLogs","Microsoft.Intune_AssignmentFilter_Create","Microsoft.Intune_AssignmentFilter_Delete","Microsoft.Intune_AssignmentFilter_Read","Microsoft.Intune_AssignmentFilter_Update","Microsoft.Intune_EndpointAnalytics_Create","Microsoft.Intune_EndpointAnalytics_Read","Microsoft.Intune_EndpointAnalytics_Update","Microsoft.Intune_EndpointAnalytics_Delete","Microsoft.Intune_MicrosoftStoreForBusiness_Read","Microsoft.Intune_MicrosoftStoreForBusiness_Modify","Microsoft.Intune_MicrosoftDefenderATP_Read","Microsoft.Intune_WindowsEnterpriseCertificate_Read","Microsoft.Intune_WindowsEnterpriseCertificate_Modify","Microsoft.Intune_CertificateConnector_Read","Microsoft.Intune_CertificateConnector_Modify","Microsoft.Intune_Customization_Create","Microsoft.Intune_Customization_Read","Microsoft.Intune_Customization_Update","Microsoft.Intune_Customization_Delete","Microsoft.Intune_Customization_Assign","Microsoft.Intune_TermsAndConditions_Create","Microsoft.Intune_TermsAndConditions_Read","Microsoft.Intune_TermsAndConditions_Update","Microsoft.Intune_TermsAndConditions_Delete","Microsoft.Intune_TermsAndConditions_Assign","Microsoft.Intune_PartnerDeviceManagement_Read","Microsoft.Intune_MobileThreatDefense_Read","Microsoft.Intune_DerivedCredentials_Read","Microsoft.Intune_RemoteAssistance_Read","Microsoft.Intune_RemoteAssistance_Update","Microsoft.Intune_RemoteAssistance_ViewReports","Microsoft.Intune_RemoteAssistanceApp_ViewScreen","Microsoft.Intune_RemoteAssistanceApp_TakeFullControl","Microsoft.Intune_RemoteAssistanceApp_Elevation","Microsoft.Intune_CloudAttach_ResourceExplorer","Microsoft.Intune_CloudAttach_ClientDetails","Microsoft.Intune_CloudAttach_Timeline","Microsoft.Intune_CloudAttach_Collections","Microsoft.Intune_CloudAttach_Applications","Microsoft.Intune_CloudAttach_ApplicationActions","Microsoft.Intune_CloudAttach_CMPivot","Microsoft.Intune_CloudAttach_Scripts","Microsoft.Intune_CloudAttach_ScriptActions","Microsoft.Intune_CloudAttach_SoftwareUpdates","Microsoft.Intune_CloudAttach_EnrollNow","Microsoft.Intune_ServiceNow_ViewIncidents");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "School Administrators can manage apps and settings for their groups. They can take remote actions on devices, including remotely locking them, restarting them, and retiring them from management.";
            DisplayName               = "School Administrator";
            Ensure                    = "Present";
            Id                        = "2f9f4f7e-2d13-427b-adf2-361a1eef7ae8";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-Application Manager"
        {
            allowedResourceActions    = @("Microsoft.Intune_Organization_Read","Microsoft.Intune_MobileApps_Create","Microsoft.Intune_MobileApps_Read","Microsoft.Intune_MobileApps_Update","Microsoft.Intune_MobileApps_Delete","Microsoft.Intune_MobileApps_Assign","Microsoft.Intune_MobileApps_Relate","Microsoft.Intune_ManagedDevices_Read","Microsoft.Intune_ManagedApps_Create","Microsoft.Intune_ManagedApps_Read","Microsoft.Intune_ManagedApps_Update","Microsoft.Intune_ManagedApps_Delete","Microsoft.Intune_ManagedApps_Assign","Microsoft.Intune_ManagedApps_Wipe","Microsoft.Intune_AndroidSync_Read","Microsoft.Intune_AndroidSync_UpdateApps","Microsoft.Intune_DeviceConfigurations_Read","Microsoft.Intune_PolicySets_Assign","Microsoft.Intune_PolicySets_Create","Microsoft.Intune_PolicySets_Delete","Microsoft.Intune_PolicySets_Read","Microsoft.Intune_PolicySets_Update","Microsoft.Intune_AssignmentFilter_Create","Microsoft.Intune_AssignmentFilter_Delete","Microsoft.Intune_AssignmentFilter_Read","Microsoft.Intune_AssignmentFilter_Update","Microsoft.Intune_MicrosoftDefenderATP_Read","Microsoft.Intune_MicrosoftStoreForBusiness_Read","Microsoft.Intune_WindowsEnterpriseCertificate_Read","Microsoft.Intune_PartnerDeviceManagement_Read","Microsoft.Intune_MobileThreatDefense_Read","Microsoft.Intune_CertificateConnector_Read","Microsoft.Intune_DerivedCredentials_Read","Microsoft.Intune_Customization_Read","Microsoft.Intune_CloudAttach_ResourceExplorer","Microsoft.Intune_CloudAttach_ClientDetails","Microsoft.Intune_CloudAttach_Timeline","Microsoft.Intune_CloudAttach_Collections","Microsoft.Intune_CloudAttach_Applications","Microsoft.Intune_CloudAttach_ApplicationActions","Microsoft.Intune_CloudAttach_SoftwareUpdates");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "Application Managers manage mobile and managed applications, can read device information and can view device configuration profiles.";
            DisplayName               = "Application Manager";
            Ensure                    = "Present";
            Id                        = "c1d9fcbb-cba5-40b0-bf6b-527006585f4b";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-Read Only Operator"
        {
            allowedResourceActions    = @("Microsoft.Intune_MobileApps_Read","Microsoft.Intune_TermsAndConditions_Read","Microsoft.Intune_ManagedApps_Read","Microsoft.Intune_ManagedDevices_Read","Microsoft.Intune_ManagedDevices_ViewReports","Microsoft.Intune_DeviceConfigurations_Read","Microsoft.Intune_DeviceConfigurations_ViewReports","Microsoft.Intune_DeviceCompliancePolices_Read","Microsoft.Intune_DeviceCompliancePolices_ViewReports","Microsoft.Intune_TelecomExpenses_Read","Microsoft.Intune_RemoteAssistance_Read","Microsoft.Intune_RemoteAssistance_ViewReports","Microsoft.Intune_Organization_Read","Microsoft.Intune_EndpointProtection_Read","Microsoft.Intune_EnrollmentProgramToken_Read","Microsoft.Intune_AppleEnrollmentProfiles_Read","Microsoft.Intune_AppleDeviceSerialNumbers_Read","Microsoft.Intune_DeviceEnrollmentManagers_Read","Microsoft.Intune_CorporateDeviceIdentifiers_Read","Microsoft.Intune_Roles_Read","Microsoft.Intune_Reports_Read","Microsoft.Intune_AndroidSync_Read","Microsoft.Intune_Audit_Read","Microsoft.Intune_RemoteTasks_GetFileVaultKey","Microsoft.Intune_SecurityBaselines_Read","Microsoft.Intune_PolicySets_Read","Microsoft.Intune_EndpointAnalytics_Read","Microsoft.Intune_AssignmentFilter_Read","Microsoft.Intune_MicrosoftDefenderATP_Read","Microsoft.Intune_Customization_Read","Microsoft.Intune_MicrosoftStoreForBusiness_Read","Microsoft.Intune_WindowsEnterpriseCertificate_Read","Microsoft.Intune_PartnerDeviceManagement_Read","Microsoft.Intune_MobileThreatDefense_Read","Microsoft.Intune_CertificateConnector_Read","Microsoft.Intune_DerivedCredentials_Read","Microsoft.Intune_AndroidFota_Read","Microsoft.Intune_QuietTimePolicies_Read","Microsoft.Intune_QuietTimePolicies_ViewReports","Microsoft.Intune_CloudAttach_ResourceExplorer","Microsoft.Intune_CloudAttach_ClientDetails","Microsoft.Intune_CloudAttach_Timeline","Microsoft.Intune_CloudAttach_Collections","Microsoft.Intune_CloudAttach_Applications","Microsoft.Intune_CloudAttach_Scripts","Microsoft.Intune_CloudAttach_SoftwareUpdates","Microsoft.Intune_OrganizationalMessages_Read","Microsoft.Intune_EpmPolicy_Read","Microsoft.Intune_EpmPolicy_ViewReports","Microsoft.Intune_EpmPolicy_ViewElevationRequests","Microsoft.Intune_ServiceNow_ViewIncidents");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "Read Only Operators view user, device, enrollment, configuration and application information and cannot make changes to Intune.";
            DisplayName               = "Read Only Operator";
            Ensure                    = "Present";
            Id                        = "fa1d7878-e8cb-41a1-8254-0142355c9f84";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-Help Desk Operator"
        {
            allowedResourceActions    = @("Microsoft.Intune_MobileApps_Read","Microsoft.Intune_MobileApps_Assign","Microsoft.Intune_ManagedApps_Read","Microsoft.Intune_ManagedApps_Assign","Microsoft.Intune_ManagedApps_Wipe","Microsoft.Intune_ManagedDevices_Read","Microsoft.Intune_ManagedDevices_Update","Microsoft.Intune_ManagedDevices_SetPrimaryUser","Microsoft.Intune_ManagedDevices_ViewReports","Microsoft.Intune_RemoteTasks_Wipe","Microsoft.Intune_RemoteTasks_Retire","Microsoft.Intune_RemoteTasks_RemoteLock","Microsoft.Intune_RemoteTasks_ResetPasscode","Microsoft.Intune_RemoteTasks_EnableLostMode","Microsoft.Intune_RemoteTasks_DisableLostMode","Microsoft.Intune_RemoteTasks_LocateDevice","Microsoft.Intune_RemoteTasks_PlayLostModeSound","Microsoft.Intune_RemoteTasks_SetDeviceName","Microsoft.Intune_RemoteTasks_RebootNow","Microsoft.Intune_RemoteTasks_ShutDown","Microsoft.Intune_RemoteTasks_RequestRemoteAssistance","Microsoft.Intune_RemoteTasks_EnableWindowsIntuneAgent","Microsoft.Intune_RemoteTasks_CleanPC","Microsoft.Intune_RemoteTasks_ManageSharedDeviceUsers","Microsoft.Intune_RemoteTasks_SyncDevice","Microsoft.Intune_RemoteTasks_WindowsDefender","Microsoft.Intune_RemoteTasks_RotateBitLockerKeys","Microsoft.Intune_RemoteTasks_UpdateDeviceAccount","Microsoft.Intune_RemoteTasks_RevokeAppleVppLicenses","Microsoft.Intune_RemoteTasks_CustomNotification","Microsoft.Intune_RemoteTasks_ActivateDeviceEsim","Microsoft.Intune_RemoteTasks_InitiateMDMKeyRecovery","Microsoft.Intune_RemoteTasks_InitiateDeviceAttestation","Microsoft.Intune_RemoteTasks_OnDemandProactiveRemediation","Microsoft.Intune_DeviceConfigurations_Read","Microsoft.Intune_DeviceConfigurations_ViewReports","Microsoft.Intune_DeviceCompliancePolices_Read","Microsoft.Intune_DeviceCompliancePolices_ViewReports","Microsoft.Intune_TelecomExpenses_Read","Microsoft.Intune_RemoteAssistance_Read","Microsoft.Intune_RemoteAssistanceApp_ViewScreen","Microsoft.Intune_RemoteAssistanceApp_TakeFullControl","Microsoft.Intune_RemoteAssistanceApp_Elevation","Microsoft.Intune_RemoteAssistanceApp_Unattended","Microsoft.Intune_Organization_Read","Microsoft.Intune_EndpointProtection_Read","Microsoft.Intune_EnrollmentProgramToken_Read","Microsoft.Intune_AppleEnrollmentProfiles_Read","Microsoft.Intune_AppleDeviceSerialNumbers_Read","Microsoft.Intune_DeviceEnrollmentManagers_Read","Microsoft.Intune_CorporateDeviceIdentifiers_Read","Microsoft.Intune_TermsAndConditions_Read","Microsoft.Intune_Roles_Read","Microsoft.Intune_AndroidSync_Read","Microsoft.Intune_Audit_Read","Microsoft.Intune_RemoteTasks_GetFileVaultKey","Microsoft.Intune_RemoteTasks_RotateFileVaultKey","Microsoft.Intune_SecurityBaselines_Read","Microsoft.Intune_PolicySets_Read","Microsoft.Intune_RemoteTasks_ConfigurationManagerAction","Microsoft.Intune_RemoteTasks_DeviceLogs","Microsoft.Intune_AssignmentFilter_Read","Microsoft.Intune_EndpointAnalytics_Read","Microsoft.Intune_MicrosoftDefenderATP_Read","Microsoft.Intune_MicrosoftStoreForBusiness_Read","Microsoft.Intune_WindowsEnterpriseCertificate_Read","Microsoft.Intune_PartnerDeviceManagement_Read","Microsoft.Intune_MobileThreatDefense_Read","Microsoft.Intune_CertificateConnector_Read","Microsoft.Intune_DerivedCredentials_Read","Microsoft.Intune_Customization_Read","Microsoft.Intune_AndroidFota_Read","Microsoft.Intune_CloudAttach_ResourceExplorer","Microsoft.Intune_CloudAttach_ClientDetails","Microsoft.Intune_CloudAttach_Timeline","Microsoft.Intune_CloudAttach_Collections","Microsoft.Intune_CloudAttach_Applications","Microsoft.Intune_CloudAttach_ApplicationActions","Microsoft.Intune_CloudAttach_CMPivot","Microsoft.Intune_CloudAttach_Scripts","Microsoft.Intune_CloudAttach_ScriptActions","Microsoft.Intune_CloudAttach_SoftwareUpdates","Microsoft.Intune_CloudAttach_EnrollNow","Microsoft.Intune_ServiceNow_ViewIncidents");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "Help Desk Operators perform remote tasks on users and devices and can assign applications or policies to users or devices.";
            DisplayName               = "Help Desk Operator";
            Ensure                    = "Present";
            Id                        = "9e0cc482-82df-4ab2-a24c-0c23a3f52e1e";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-Organizational Messages Manager"
        {
            allowedResourceActions    = @("Microsoft.Intune_Organization_Read","Microsoft.Intune_OrganizationalMessages_Create","Microsoft.Intune_OrganizationalMessages_Read","Microsoft.Intune_OrganizationalMessages_Update","Microsoft.Intune_OrganizationalMessages_Delete","Microsoft.Intune_OrganizationalMessages_Assign","Microsoft.Intune_OrganizationalMessages_UpdateControl");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "Organizational Messages Managers can manage organizational messages in Intune console.";
            DisplayName               = "Organizational Messages Manager";
            Ensure                    = "Present";
            Id                        = "80d7a9c3-b5d2-4e46-a681-6f3d16e623cc";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-Endpoint Privilege Reader"
        {
            allowedResourceActions    = @("Microsoft.Intune_Organization_Read","Microsoft.Intune_EpmPolicy_Read","Microsoft.Intune_EpmPolicy_ViewReports","Microsoft.Intune_EpmPolicy_ViewElevationRequests");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "Organizational Messages Readers can view Endpoint Privilege Management (EPM) policies in the Intune console.";
            DisplayName               = "Endpoint Privilege Reader";
            Ensure                    = "Present";
            Id                        = "9553af24-bd83-4ac3-a339-0e58f9e5478e";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
        IntuneRoleDefinition "IntuneRoleDefinition-Endpoint Privilege Manager"
        {
            allowedResourceActions    = @("Microsoft.Intune_Organization_Read","Microsoft.Intune_EpmPolicy_Create","Microsoft.Intune_EpmPolicy_Read","Microsoft.Intune_EpmPolicy_Update","Microsoft.Intune_EpmPolicy_Delete","Microsoft.Intune_EpmPolicy_Assign","Microsoft.Intune_EpmPolicy_ViewElevationRequests","Microsoft.Intune_EpmPolicy_ModifyElevationRequests","Microsoft.Intune_EpmPolicy_ViewReports");
            ApplicationId             = $ConfigurationData.NonNodeData.ApplicationId;
            CertificateThumbprint     = $ConfigurationData.NonNodeData.CertificateThumbprint;
            Description               = "Endpoint Privilege Managers can manage Endpoint Privilege Management (EPM) policies in the Intune console.";
            DisplayName               = "Endpoint Privilege Manager";
            Ensure                    = "Present";
            Id                        = "e9a9f614-7527-44e2-a61a-1879747ccfd7";
            IsBuiltIn                 = $True;
            notallowedResourceActions = @();
            roleScopeTagIds           = @();
            TenantId                  = $OrganizationName;
        }
    }
}

M365TenantConfig -ConfigurationData .\ConfigurationData.psd1
