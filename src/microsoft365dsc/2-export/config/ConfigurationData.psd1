@{
    AllNodes = @(
        @{
            NodeName                    = "localhost"
            PSDscAllowPlainTextPassword = $true;
            PSDscAllowDomainUser        = $true;
            #region Parameters
            # Default Value Used to Ensure a Configuration Data File is Generated
            ServerNumber = "0"

        }
    )
    NonNodeData = @(
        @{
            # Tenant's default verified domain name
            OrganizationName = "kapildev1.onmicrosoft.com"

            # Azure AD Application Id for Authentication
            ApplicationId = "xxx"

            # The Id or Name of the tenant to authenticate against
            TenantId = "kapildev1.onmicrosoft.com"

            # Thumbprint of the certificate to use for authentication
            CertificateThumbprint = "yyy"

            # Azure AD Application Secret for Authentication
            ApplicationSecret = "zzz"

        }
    )
}
