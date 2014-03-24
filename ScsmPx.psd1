<#############################################################################
The ScsmPx module facilitates automation with Microsoft System Center Service
Manager by auto-loading the native modules that are included as part of that
product and enabling automatic discovery of the commands that are contained
within the native modules. It also includes dozens of complementary commands
that are not available out of the box to allow you to do much more with your
PowerShell automation efforts using the platform.

Copyright (c) 2014 Provance Technologies.

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version.

This program is distributed in the hope that it will be useful, but WITHOUT
ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License in the
license folder that is included in the ScsmPx module. If not, see
<https://www.gnu.org/licenses/gpl.html>.
#############################################################################>

@{
      ModuleToProcess = 'ScsmPx.psm1'
        ModuleVersion = '1.0.4.33'
                 GUID = '2fb132d0-0eea-434f-9619-e8c134e12c57'
               Author = 'Kirk Munro'
          CompanyName = 'Provance Technologies'
            Copyright = '(c) 2014 Provance Technologies'
          Description = 'The ScsmPx module facilitates automation with Microsoft System Center Service Manager by auto-loading the native modules that are included as part of that product and enabling automatic discovery of the commands that are contained within the native modules. It also includes dozens of complementary commands that are not available out of the box to allow you to do much more with your PowerShell automation efforts using the platform.'
    PowerShellVersion = '3.0'
     ScriptsToProcess = @(
                        'scripts\Initialize-ScsmPxModule.ps1'
                        )
    FunctionsToExport = @(
                        'Get-SCSMCommand'
                        'Get-ScsmPxAdGroup'
                        'Get-ScsmPxAdPrinter'
                        'Get-ScsmPxAdUser'
                        'Get-ScsmPxBuild'
                        'Get-ScsmPxBusinessService'
                        'Get-ScsmPxChangeRequest'
                        'Get-ScsmPxCommand'
                        'Get-ScsmPxConfigItem'
                        'Get-ScsmPxConnectedUser'
                        'Get-ScsmPxDependentActivity'
                        'Get-ScsmPxDwCube'
                        'Get-ScsmPxDwDataSource'
                        'Get-ScsmPxDwName'
                        'Get-ScsmPxEnterpriseManagementGroup'
                        'Get-ScsmPxEnvironment'
                        'Get-ScsmPxIncident'
                        'Get-ScsmPxList'
                        'Get-ScsmPxListItem'
                        'Get-ScsmPxKnowledgeArticle'
                        'Get-ScsmPxManagementServer'
                        'Get-ScsmPxManualActivity'
                        'Get-ScsmPxObject'
                        'Get-ScsmPxParallelActivity'
                        'Get-ScsmPxPrimaryManagementServer'
                        'Get-ScsmPxProblem'
                        'Get-ScsmPxRelatedObject'
                        'Get-ScsmPxReleaseRecord'
                        'Get-ScsmPxRequestOffering'
                        'Get-ScsmPxReviewActivity'
                        'Get-ScsmPxRunbook'
                        'Get-ScsmPxRunbookActivity'
                        'Get-ScsmPxSequentialActivity'
                        'Get-ScsmPxServiceOffering'
                        'Get-ScsmPxServiceRequest'
                        'Get-ScsmPxSoftwareItem'
                        'Get-ScsmPxSoftwareUpdate'
                        'Get-ScsmPxUserOrGroup'
                        'Get-ScsmPxViewData'
                        'Get-ScsmPxWindowsComputer'
                        'New-ScsmPxObject'
                        'New-ScsmPxObjectSearchCriteria'
                        'New-ScsmPxProxyFunctionDefinition'
                        'Remove-ScsmPxAdGroup'
                        'Remove-ScsmPxAdPrinter'
                        'Remove-ScsmPxAdUser'
                        'Remove-ScsmPxBuild'
                        'Remove-ScsmPxBusinessService'
                        'Remove-ScsmPxChangeRequest'
                        'Remove-ScsmPxConfigItem'
                        'Remove-ScsmPxDependentActivity'
                        'Remove-ScsmPxDwCube'
                        'Remove-ScsmPxDwDataSource'
                        'Remove-ScsmPxEnvironment'
                        'Remove-ScsmPxIncident'
                        'Remove-ScsmPxKnowledgeArticle'
                        'Remove-ScsmPxManagementServer'
                        'Remove-ScsmPxManualActivity'
                        'Remove-ScsmPxObject'
                        'Remove-ScsmPxParallelActivity'
                        'Remove-ScsmPxProblem'
                        'Remove-ScsmPxReleaseRecord'
                        'Remove-ScsmPxRequestOffering'
                        'Remove-ScsmPxReviewActivity'
                        'Remove-ScsmPxRunbook'
                        'Remove-ScsmPxRunbookActivity'
                        'Remove-ScsmPxSequentialActivity'
                        'Remove-ScsmPxServiceOffering'
                        'Remove-ScsmPxServiceRequest'
                        'Remove-ScsmPxSoftwareItem'
                        'Remove-ScsmPxSoftwareUpdate'
                        'Remove-ScsmPxUserOrGroup'
                        'Remove-ScsmPxWindowsComputer'
                        'Rename-ScsmPxAdGroup'
                        'Rename-ScsmPxAdPrinter'
                        'Rename-ScsmPxAdUser'
                        'Rename-ScsmPxBuild'
                        'Rename-ScsmPxBusinessService'
                        'Rename-ScsmPxChangeRequest'
                        'Rename-ScsmPxConfigItem'
                        'Rename-ScsmPxDependentActivity'
                        'Rename-ScsmPxDwCube'
                        'Rename-ScsmPxDwDataSource'
                        'Rename-ScsmPxEnvironment'
                        'Rename-ScsmPxIncident'
                        'Rename-ScsmPxKnowledgeArticle'
                        'Rename-ScsmPxManagementServer'
                        'Rename-ScsmPxManualActivity'
                        'Rename-ScsmPxObject'
                        'Rename-ScsmPxParallelActivity'
                        'Rename-ScsmPxProblem'
                        'Rename-ScsmPxReleaseRecord'
                        'Rename-ScsmPxRequestOffering'
                        'Rename-ScsmPxReviewActivity'
                        'Rename-ScsmPxRunbook'
                        'Rename-ScsmPxRunbookActivity'
                        'Rename-ScsmPxSequentialActivity'
                        'Rename-ScsmPxServiceOffering'
                        'Rename-ScsmPxServiceRequest'
                        'Rename-ScsmPxSoftwareItem'
                        'Rename-ScsmPxSoftwareUpdate'
                        'Rename-ScsmPxUserOrGroup'
                        'Rename-ScsmPxWindowsComputer'
                        'Reset-ScsmPxCommandCache'
                        'Restore-ScsmPxAdGroup'
                        'Restore-ScsmPxAdPrinter'
                        'Restore-ScsmPxAdUser'
                        'Restore-ScsmPxBuild'
                        'Restore-ScsmPxBusinessService'
                        'Restore-ScsmPxConfigItem'
                        'Restore-ScsmPxEnvironment'
                        'Restore-ScsmPxKnowledgeArticle'
                        'Restore-ScsmPxManagementServer'
                        'Restore-ScsmPxObject'
                        'Restore-ScsmPxServiceRequest'
                        'Restore-ScsmPxSoftwareItem'
                        'Restore-ScsmPxSoftwareUpdate'
                        'Restore-ScsmPxUserOrGroup'
                        'Restore-ScsmPxWindowsComputer'
                        'Set-ScsmPxAdGroup'
                        'Set-ScsmPxAdPrinter'
                        'Set-ScsmPxAdUser'
                        'Set-ScsmPxBuild'
                        'Set-ScsmPxBusinessService'
                        'Set-ScsmPxChangeRequest'
                        'Set-ScsmPxConfigItem'
                        'Set-ScsmPxDependentActivity'
                        'Set-ScsmPxDwCube'
                        'Set-ScsmPxDwDataSource'
                        'Set-ScsmPxEnvironment'
                        'Set-ScsmPxIncident'
                        'Set-ScsmPxKnowledgeArticle'
                        'Set-ScsmPxManagementServer'
                        'Set-ScsmPxManualActivity'
                        'Set-ScsmPxObject'
                        'Set-ScsmPxParallelActivity'
                        'Set-ScsmPxProblem'
                        'Set-ScsmPxReleaseRecord'
                        'Set-ScsmPxRequestOffering'
                        'Set-ScsmPxReviewActivity'
                        'Set-ScsmPxRunbook'
                        'Set-ScsmPxRunbookActivity'
                        'Set-ScsmPxSequentialActivity'
                        'Set-ScsmPxServiceOffering'
                        'Set-ScsmPxServiceRequest'
                        'Set-ScsmPxSoftwareItem'
                        'Set-ScsmPxSoftwareUpdate'
                        'Set-ScsmPxUserOrGroup'
                        'Set-ScsmPxWindowsComputer'
                        )
      CmdletsToExport = @(
                        'Add-SCSMAllowListClass'
                        'Disable-SCDWJob'
                        'Disable-SCDWJobCategory'
                        'Disable-SCDWJobSchedule'
                        'Disable-SCDWSource'
                        'Enable-SCDWJob'
                        'Enable-SCDWJobCategory'
                        'Enable-SCDWJobSchedule'
                        'Enable-SCDWSource'
                        'Export-SCManagementPack'
                        'Get-SCClass'
                        'Get-SCClassInstance'
                        'Get-SCDiscovery'
                        'Get-SCDWEntity'
                        'Get-SCDWJob'
                        'Get-SCDWJobModule'
                        'Get-SCDWJobSchedule'
                        'Get-SCDWRetentionPeriod'
                        'Get-SCDWSource'
                        'Get-SCDWSourceType'
                        'Get-SCDWWatermark'
                        'Get-SCGroup'
                        'Get-SCManagementGroupConnection'
                        'Get-SCManagementPack'
                        'Get-SCObjectTemplate'
                        'Get-SCRelationship'
                        'Get-SCRelationshipInstance'
                        'Get-SCRunAsAccount'
                        'Get-SCSMAllowList'
                        'Get-SCSMAnnouncement'
                        'Get-SCSMChannel'
                        'Get-SCSMConnector'
                        'Get-SCSMDCMWorkflow'
                        'Get-SCSMDeletedItem'
                        'Get-SCSMEmailTemplate'
                        'Get-SCSMEmailTemplateContent'
                        'Get-SCSMPortalCMConfiguration'
                        'Get-SCSMPortalContactConfiguration'
                        'Get-SCSMPortalDeploymentProcess'
                        'Get-SCSMPortalSoftwarePackage'
                        'Get-SCSMQueue'
                        'Get-SCSMSetting'
                        'Get-SCSMSubscription'
                        'Get-SCSMTask'
                        'Get-SCSMUser'
                        'Get-SCSMUserRole'
                        'Get-SCSMView'
                        'Get-SCSMWorkflow'
                        'Get-SCSMWorkflowStatus'
                        'Import-SCManagementPack'
                        'Import-SCSMInstance'
                        'New-SCADConnector'
                        'New-SCClassInstance'
                        'New-SCCMConnector'
                        'New-SCDWSourceType'
                        'New-SCManagementGroupConnection'
                        'New-SCManagementPack'
                        'New-SCManagementPackBundle'
                        'New-SCOMAlertConnector'
                        'New-SCOMConfigurationItemConnector'
                        'New-SCOrchestratorConnector'
                        'New-SCRelationshipInstance'
                        'New-SCRunAsAccount'
                        'New-SCSMAlertRule'
                        'New-SCSMAnnouncement'
                        'New-SCSMDCMWorkflow'
                        'New-SCSMEmailTemplate'
                        'New-SCSMPortalDeploymentProcess'
                        'New-SCSMSubscription'
                        'New-SCSMUserRole'
                        'New-SCSMWorkflow'
                        'New-SCVMMConnector'
                        'Protect-SCManagementPack'
                        'Register-SCDWSource'
                        'Remove-SCClassInstance'
                        'Remove-SCManagementGroupConnection'
                        'Remove-SCManagementPack'
                        'Remove-SCRelationshipInstance'
                        'Remove-SCRunAsAccount'
                        'Remove-SCSMAllowListClass'
                        'Remove-SCSMAnnouncement'
                        'Remove-SCSMConnector'
                        'Remove-SCSMDCMWorkflow'
                        'Remove-SCSMEmailTemplate'
                        'Remove-SCSMPortalDeploymentProcess'
                        'Remove-SCSMSubscription'
                        'Remove-SCSMUserRole'
                        'Remove-SCSMWorkflow'
                        'Reset-SCSMAllowList'
                        'Restore-SCSMDeletedItem'
                        'Set-SCDWJobSchedule'
                        'Set-SCDWRetentionPeriod'
                        'Set-SCDWSource'
                        'Set-SCDWWatermark'
                        'Set-SCManagementGroupConnection'
                        'Set-SCSMChannel'
                        'Set-SCSMPortalCMConfiguration'
                        'Set-SCSMPortalContactConfiguration'
                        'Start-SCDWJob'
                        'Start-SCSMConnector'
                        'Stop-SCDWJob'
                        'Test-SCManagementPack'
                        'Unregister-SCDWManagementPack'
                        'Unregister-SCDWSource'
                        'Update-SCClassInstance'
                        'Update-SCRunAsAccount'
                        'Update-SCSMAnnouncement'
                        'Update-SCSMConnector'
                        'Update-SCSMDCMWorkflow'
                        'Update-SCSMEmailTemplate'
                        'Update-SCSMPortalDeploymentProcess'
                        'Update-SCSMPortalSoftwarePackage'
                        'Update-SCSMSetting'
                        'Update-SCSMSubscription'
                        'Update-SCSMUserRole'
                        'Update-SCSMWorkflow'
                        )
      AliasesToExport = @(
                        'Export-SCSMManagementPack'
                        'Get-SCSMClass'
                        'Get-SCSMClassInstance'
                        'Get-SCSMDiscovery'
                        'Get-SCSMGroup'
                        'Get-SCSMManagementGroupConnection'
                        'Get-SCSMManagementPack'
                        'Get-SCSMObjectTemplate'
                        'Get-SCSMRelationship'
                        'Get-SCSMRelationshipInstance'
                        'Get-SCSMRunAsAccount'
                        'Import-SCSMManagementPack'
                        'New-SCSMADConnector'
                        'New-SCSMClassInstance'
                        'New-SCSMCMConnector'
                        'New-SCSMManagementGroupConnection'
                        'New-SCSMManagementPack'
                        'New-SCSMManagementPackBundle'
                        'New-SCSMOMAlertConnector'
                        'New-SCSMOMConfigurationItemConnector'
                        'New-SCSMRunAsAccount'
                        'Protect-SCSMManagementPack'
                        'Remove-SCSMClassInstance'
                        'Remove-SCSMManagementGroupConnection'
                        'Remove-SCSMManagementPack'
                        'Remove-SCSMRelationshipInstance'
                        'Remove-SCSMRunAsAccount'
                        'Set-SCSMManagementGroupConnection'
                        'Test-SCSMManagementPack'
                        'Update-SCSMClassInstance'
                        'Update-SCSMRunAsAccount'
                        )
             FileList = @(
                        'ScsmPx.psd1'
                        'ScsmPx.psm1'
                        'functions\Get-ScsmPxCommand.ps1'
                        'functions\Get-ScsmPxConnectedUser.ps1'
                        'functions\Get-ScsmPxDwName.ps1'
                        'functions\Get-ScsmPxEnterpriseManagementGroup.ps1'
                        'functions\Get-ScsmPxList.ps1'
                        'functions\Get-ScsmPxListItem.ps1'
                        'functions\Get-ScsmPxObject.ps1'
                        'functions\Get-ScsmPxPrimaryManagementServer.ps1'
                        'functions\Get-ScsmPxRelatedObject.ps1'
                        'functions\Get-ScsmPxViewData.ps1'
                        'functions\New-ScsmPxObject.ps1'
                        'functions\New-ScsmPxObjectSearchCriteria.ps1'
                        'functions\New-ScsmPxProxyFunctionDefinition.ps1'
                        'functions\Remove-ScsmPxObject.ps1'
                        'functions\Rename-ScsmPxObject.ps1'
                        'functions\Reset-ScsmPxCommandCache.ps1'
                        'functions\Restore-ScsmPxObject.ps1'
                        'functions\Set-ScsmPxObject.ps1'
                        'scripts\Initialize-ScsmPxModule.ps1'
                        'scripts\Install-ScsmPxModule.ps1'
                        )
}
# SIG # Begin signature block
# MIIZKQYJKoZIhvcNAQcCoIIZGjCCGRYCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUMcxcWWhdQ/A+94xtZC6S6Xat
# fcCgghQZMIID7jCCA1egAwIBAgIQfpPr+3zGTlnqS5p31Ab8OzANBgkqhkiG9w0B
# AQUFADCBizELMAkGA1UEBhMCWkExFTATBgNVBAgTDFdlc3Rlcm4gQ2FwZTEUMBIG
# A1UEBxMLRHVyYmFudmlsbGUxDzANBgNVBAoTBlRoYXd0ZTEdMBsGA1UECxMUVGhh
# d3RlIENlcnRpZmljYXRpb24xHzAdBgNVBAMTFlRoYXd0ZSBUaW1lc3RhbXBpbmcg
# Q0EwHhcNMTIxMjIxMDAwMDAwWhcNMjAxMjMwMjM1OTU5WjBeMQswCQYDVQQGEwJV
# UzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xMDAuBgNVBAMTJ1N5bWFu
# dGVjIFRpbWUgU3RhbXBpbmcgU2VydmljZXMgQ0EgLSBHMjCCASIwDQYJKoZIhvcN
# AQEBBQADggEPADCCAQoCggEBALGss0lUS5ccEgrYJXmRIlcqb9y4JsRDc2vCvy5Q
# WvsUwnaOQwElQ7Sh4kX06Ld7w3TMIte0lAAC903tv7S3RCRrzV9FO9FEzkMScxeC
# i2m0K8uZHqxyGyZNcR+xMd37UWECU6aq9UksBXhFpS+JzueZ5/6M4lc/PcaS3Er4
# ezPkeQr78HWIQZz/xQNRmarXbJ+TaYdlKYOFwmAUxMjJOxTawIHwHw103pIiq8r3
# +3R8J+b3Sht/p8OeLa6K6qbmqicWfWH3mHERvOJQoUvlXfrlDqcsn6plINPYlujI
# fKVOSET/GeJEB5IL12iEgF1qeGRFzWBGflTBE3zFefHJwXECAwEAAaOB+jCB9zAd
# BgNVHQ4EFgQUX5r1blzMzHSa1N197z/b7EyALt0wMgYIKwYBBQUHAQEEJjAkMCIG
# CCsGAQUFBzABhhZodHRwOi8vb2NzcC50aGF3dGUuY29tMBIGA1UdEwEB/wQIMAYB
# Af8CAQAwPwYDVR0fBDgwNjA0oDKgMIYuaHR0cDovL2NybC50aGF3dGUuY29tL1Ro
# YXd0ZVRpbWVzdGFtcGluZ0NBLmNybDATBgNVHSUEDDAKBggrBgEFBQcDCDAOBgNV
# HQ8BAf8EBAMCAQYwKAYDVR0RBCEwH6QdMBsxGTAXBgNVBAMTEFRpbWVTdGFtcC0y
# MDQ4LTEwDQYJKoZIhvcNAQEFBQADgYEAAwmbj3nvf1kwqu9otfrjCR27T4IGXTdf
# plKfFo3qHJIJRG71betYfDDo+WmNI3MLEm9Hqa45EfgqsZuwGsOO61mWAK3ODE2y
# 0DGmCFwqevzieh1XTKhlGOl5QGIllm7HxzdqgyEIjkHq3dlXPx13SYcqFgZepjhq
# IhKjURmDfrYwggSjMIIDi6ADAgECAhAOz/Q4yP6/NW4E2GqYGxpQMA0GCSqGSIb3
# DQEBBQUAMF4xCzAJBgNVBAYTAlVTMR0wGwYDVQQKExRTeW1hbnRlYyBDb3Jwb3Jh
# dGlvbjEwMC4GA1UEAxMnU3ltYW50ZWMgVGltZSBTdGFtcGluZyBTZXJ2aWNlcyBD
# QSAtIEcyMB4XDTEyMTAxODAwMDAwMFoXDTIwMTIyOTIzNTk1OVowYjELMAkGA1UE
# BhMCVVMxHTAbBgNVBAoTFFN5bWFudGVjIENvcnBvcmF0aW9uMTQwMgYDVQQDEytT
# eW1hbnRlYyBUaW1lIFN0YW1waW5nIFNlcnZpY2VzIFNpZ25lciAtIEc0MIIBIjAN
# BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAomMLOUS4uyOnREm7Dv+h8GEKU5Ow
# mNutLA9KxW7/hjxTVQ8VzgQ/K/2plpbZvmF5C1vJTIZ25eBDSyKV7sIrQ8Gf2Gi0
# jkBP7oU4uRHFI/JkWPAVMm9OV6GuiKQC1yoezUvh3WPVF4kyW7BemVqonShQDhfu
# ltthO0VRHc8SVguSR/yrrvZmPUescHLnkudfzRC5xINklBm9JYDh6NIipdC6Anqh
# d5NbZcPuF3S8QYYq3AhMjJKMkS2ed0QfaNaodHfbDlsyi1aLM73ZY8hJnTrFxeoz
# C9Lxoxv0i77Zs1eLO94Ep3oisiSuLsdwxb5OgyYI+wu9qU+ZCOEQKHKqzQIDAQAB
# o4IBVzCCAVMwDAYDVR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcDCDAO
# BgNVHQ8BAf8EBAMCB4AwcwYIKwYBBQUHAQEEZzBlMCoGCCsGAQUFBzABhh5odHRw
# Oi8vdHMtb2NzcC53cy5zeW1hbnRlYy5jb20wNwYIKwYBBQUHMAKGK2h0dHA6Ly90
# cy1haWEud3Muc3ltYW50ZWMuY29tL3Rzcy1jYS1nMi5jZXIwPAYDVR0fBDUwMzAx
# oC+gLYYraHR0cDovL3RzLWNybC53cy5zeW1hbnRlYy5jb20vdHNzLWNhLWcyLmNy
# bDAoBgNVHREEITAfpB0wGzEZMBcGA1UEAxMQVGltZVN0YW1wLTIwNDgtMjAdBgNV
# HQ4EFgQURsZpow5KFB7VTNpSYxc/Xja8DeYwHwYDVR0jBBgwFoAUX5r1blzMzHSa
# 1N197z/b7EyALt0wDQYJKoZIhvcNAQEFBQADggEBAHg7tJEqAEzwj2IwN3ijhCcH
# bxiy3iXcoNSUA6qGTiWfmkADHN3O43nLIWgG2rYytG2/9CwmYzPkSWRtDebDZw73
# BaQ1bHyJFsbpst+y6d0gxnEPzZV03LZc3r03H0N45ni1zSgEIKOq8UvEiCmRDoDR
# EfzdXHZuT14ORUZBbg2w6jiasTraCXEQ/Bx5tIB7rGn0/Zy2DBYr8X9bCT2bW+IW
# yhOBbQAuOA2oKY8s4bL0WqkBrxWcLC9JG9siu8P+eJRRw4axgohd8D20UaF5Mysu
# e7ncIAkTcetqGVvP6KUwVyyJST+5z3/Jvz4iaGNTmr1pdKzFHTx/kuDDvBzYBHUw
# ggVuMIIEVqADAgECAhAKU6nZKT4ZKigLdw2V0ZC8MA0GCSqGSIb3DQEBBQUAMIG0
# MQswCQYDVQQGEwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsT
# FlZlcmlTaWduIFRydXN0IE5ldHdvcmsxOzA5BgNVBAsTMlRlcm1zIG9mIHVzZSBh
# dCBodHRwczovL3d3dy52ZXJpc2lnbi5jb20vcnBhIChjKTEwMS4wLAYDVQQDEyVW
# ZXJpU2lnbiBDbGFzcyAzIENvZGUgU2lnbmluZyAyMDEwIENBMB4XDTEzMDQwODAw
# MDAwMFoXDTE0MDUwODIzNTk1OVowgbExCzAJBgNVBAYTAkNBMQ8wDQYDVQQIEwZR
# dWViZWMxETAPBgNVBAcTCEdhdGluZWF1MR4wHAYDVQQKFBVQcm92YW5jZSBUZWNo
# bm9sb2dpZXMxPjA8BgNVBAsTNURpZ2l0YWwgSUQgQ2xhc3MgMyAtIE1pY3Jvc29m
# dCBTb2Z0d2FyZSBWYWxpZGF0aW9uIHYyMR4wHAYDVQQDFBVQcm92YW5jZSBUZWNo
# bm9sb2dpZXMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC04Yt50uP8
# newqG0tbz7MJHGQwrG6lf4LrqnnYvK+jHJY+mkXjOR1VQouSeteYmWzsqSiNFagM
# SFxAzO3CRZt1xP0FPQgXjsyJWcEUOokgPl+a5vFrFhmhphe7QztiO5kOR3rBr7cW
# DQhgv7yWStLg4ymNSrJbbNO0kczsl2FV/5pZ1pEdKzEDOO1X5Xx9Oaz3lb3ldrPk
# zn+Lwr36YTkU+jTPHoXPyHy4lBYK/qcNbuPTTE1BeH+rwENx9nkEUa6dPPcDKDPf
# EULo/g7P25ILApWoGJmdcefseebsu6CjtO5xYKTvk0ylWxXXoqnJvFw2z5Y8tUjA
# W0E43nmf73ApAgMBAAGjggF7MIIBdzAJBgNVHRMEAjAAMA4GA1UdDwEB/wQEAwIH
# gDBABgNVHR8EOTA3MDWgM6Axhi9odHRwOi8vY3NjMy0yMDEwLWNybC52ZXJpc2ln
# bi5jb20vQ1NDMy0yMDEwLmNybDBEBgNVHSAEPTA7MDkGC2CGSAGG+EUBBxcDMCow
# KAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3LnZlcmlzaWduLmNvbS9ycGEwEwYDVR0l
# BAwwCgYIKwYBBQUHAwMwcQYIKwYBBQUHAQEEZTBjMCQGCCsGAQUFBzABhhhodHRw
# Oi8vb2NzcC52ZXJpc2lnbi5jb20wOwYIKwYBBQUHMAKGL2h0dHA6Ly9jc2MzLTIw
# MTAtYWlhLnZlcmlzaWduLmNvbS9DU0MzLTIwMTAuY2VyMB8GA1UdIwQYMBaAFM+Z
# qep7JvRLyY6P1/AFJu/j0qedMBEGCWCGSAGG+EIBAQQEAwIEEDAWBgorBgEEAYI3
# AgEbBAgwBgEBAAEB/zANBgkqhkiG9w0BAQUFAAOCAQEASuMSDX2Mfs+c92nmVE9Q
# hhbHGRXgn7X3oWPQ4LVBgBvAjrqvBh/cxZuPjr8jRZPEyg6h1csvP2DZAjVi1oyO
# SDNSyWuGb+IW6IoCFz73h1GlLJyz816rOoD2YhBRCXJ+eCZZeoRxdG7jn1w/zq74
# FJWW1LDqnT6kXouZpPKEQXult0Cfeg3i/q0DKMbfq9qC66G1DqsDz/edORRirZ+a
# fhW+o0khAuNNDZN7Xm9pc0fr0itMrshfzUOoVChvU1xPCUryqtpz2URJWlcckVtC
# f4Vffsc/9W+FMfRuww6ahatjLWeT1fNerhWaY6YbD8OAbgj6DG+kmvorZYDX6boS
# kjCCBgowggTyoAMCAQICEFIA5aolVvwahu2WydRLM8cwDQYJKoZIhvcNAQEFBQAw
# gcoxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5WZXJpU2lnbiwgSW5jLjEfMB0GA1UE
# CxMWVmVyaVNpZ24gVHJ1c3QgTmV0d29yazE6MDgGA1UECxMxKGMpIDIwMDYgVmVy
# aVNpZ24sIEluYy4gLSBGb3IgYXV0aG9yaXplZCB1c2Ugb25seTFFMEMGA1UEAxM8
# VmVyaVNpZ24gQ2xhc3MgMyBQdWJsaWMgUHJpbWFyeSBDZXJ0aWZpY2F0aW9uIEF1
# dGhvcml0eSAtIEc1MB4XDTEwMDIwODAwMDAwMFoXDTIwMDIwNzIzNTk1OVowgbQx
# CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5WZXJpU2lnbiwgSW5jLjEfMB0GA1UECxMW
# VmVyaVNpZ24gVHJ1c3QgTmV0d29yazE7MDkGA1UECxMyVGVybXMgb2YgdXNlIGF0
# IGh0dHBzOi8vd3d3LnZlcmlzaWduLmNvbS9ycGEgKGMpMTAxLjAsBgNVBAMTJVZl
# cmlTaWduIENsYXNzIDMgQ29kZSBTaWduaW5nIDIwMTAgQ0EwggEiMA0GCSqGSIb3
# DQEBAQUAA4IBDwAwggEKAoIBAQD1I0tepdeKuzLp1Ff37+THJn6tGZj+qJ19lPY2
# axDXdYEwfwRof8srdR7NHQiM32mUpzejnHuA4Jnh7jdNX847FO6G1ND1JzW8JQs4
# p4xjnRejCKWrsPvNamKCTNUh2hvZ8eOEO4oqT4VbkAFPyad2EH8nA3y+rn59wd35
# BbwbSJxp58CkPDxBAD7fluXF5JRx1lUBxwAmSkA8taEmqQynbYCOkCV7z78/HOsv
# lvrlh3fGtVayejtUMFMb32I0/x7R9FqTKIXlTBdOflv9pJOZf9/N76R17+8V9kfn
# +Bly2C40Gqa0p0x+vbtPDD1X8TDWpjaO1oB21xkupc1+NC2JAgMBAAGjggH+MIIB
# +jASBgNVHRMBAf8ECDAGAQH/AgEAMHAGA1UdIARpMGcwZQYLYIZIAYb4RQEHFwMw
# VjAoBggrBgEFBQcCARYcaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL2NwczAqBggr
# BgEFBQcCAjAeGhxodHRwczovL3d3dy52ZXJpc2lnbi5jb20vcnBhMA4GA1UdDwEB
# /wQEAwIBBjBtBggrBgEFBQcBDARhMF+hXaBbMFkwVzBVFglpbWFnZS9naWYwITAf
# MAcGBSsOAwIaBBSP5dMahqyNjmvDz4Bq1EgYLHsZLjAlFiNodHRwOi8vbG9nby52
# ZXJpc2lnbi5jb20vdnNsb2dvLmdpZjA0BgNVHR8ELTArMCmgJ6AlhiNodHRwOi8v
# Y3JsLnZlcmlzaWduLmNvbS9wY2EzLWc1LmNybDA0BggrBgEFBQcBAQQoMCYwJAYI
# KwYBBQUHMAGGGGh0dHA6Ly9vY3NwLnZlcmlzaWduLmNvbTAdBgNVHSUEFjAUBggr
# BgEFBQcDAgYIKwYBBQUHAwMwKAYDVR0RBCEwH6QdMBsxGTAXBgNVBAMTEFZlcmlT
# aWduTVBLSS0yLTgwHQYDVR0OBBYEFM+Zqep7JvRLyY6P1/AFJu/j0qedMB8GA1Ud
# IwQYMBaAFH/TZafC3ey78DAJ80M5+gKvMzEzMA0GCSqGSIb3DQEBBQUAA4IBAQBW
# IuY0pMRhy0i5Aa1WqGQP2YyRxLvMDOWteqAif99HOEotbNF/cRp87HCpsfBP5A8M
# U/oVXv50mEkkhYEmHJEUR7BMY4y7oTTUxkXoDYUmcwPQqYxkbdxxkuZFBWAVWVE5
# /FgUa/7UpO15awgMQXLnNyIGCb4j6T9Emh7pYZ3MsZBc/D3SjaxCPWU21LQ9QCiP
# mxDPIybMSyDLkB9djEw0yjzY5TfWb6UgvTTrJtmuDefFmvehtCGRM2+G6Fi7JXx0
# Dlj+dRtjP84xfJuPG5aexVN2hFucrZH6rO2Tul3IIVPCglNjrxINUIcRGz1UUpaK
# LJw9khoImgUux5OlSJHTMYIEejCCBHYCAQEwgckwgbQxCzAJBgNVBAYTAlVTMRcw
# FQYDVQQKEw5WZXJpU2lnbiwgSW5jLjEfMB0GA1UECxMWVmVyaVNpZ24gVHJ1c3Qg
# TmV0d29yazE7MDkGA1UECxMyVGVybXMgb2YgdXNlIGF0IGh0dHBzOi8vd3d3LnZl
# cmlzaWduLmNvbS9ycGEgKGMpMTAxLjAsBgNVBAMTJVZlcmlTaWduIENsYXNzIDMg
# Q29kZSBTaWduaW5nIDIwMTAgQ0ECEApTqdkpPhkqKAt3DZXRkLwwCQYFKw4DAhoF
# AKB4MBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisG
# AQQBgjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcN
# AQkEMRYEFBYGXLqP1WdEL2XdqGEE6gW+dZkFMA0GCSqGSIb3DQEBAQUABIIBAC93
# oxTQsZ7ETcEbG0fbh5Ba93HJF0+i4jEti2jiv6BcZltBOngvLpS6UsejatZDRuD7
# DSYn+W+Hxdi/7st4VOdSkQge8DjA6ElCBzqI5NVjl6/zPKp00XkmteSsg+jbtN/G
# tY2YOWtpmYJf2YzK9gTzpKqU6Wday5cldIb8NWE9lDY9fIrPeFfObHaujD25jXsV
# JLy1+LfzOKaqrSVggaeKyN6YFwRNACNN7TmJcAEjxTRdCHa5idbLNVuPh9yCz1I3
# K2lAotjji5KupSoAOlWkdbYwmGSnzKWHSukl474h9UGgXI1DZ0i5Ezw+ZW5vnPQR
# CP2dBGXI/mp2++SYunyhggILMIICBwYJKoZIhvcNAQkGMYIB+DCCAfQCAQEwcjBe
# MQswCQYDVQQGEwJVUzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xMDAu
# BgNVBAMTJ1N5bWFudGVjIFRpbWUgU3RhbXBpbmcgU2VydmljZXMgQ0EgLSBHMgIQ
# Ds/0OMj+vzVuBNhqmBsaUDAJBgUrDgMCGgUAoF0wGAYJKoZIhvcNAQkDMQsGCSqG
# SIb3DQEHATAcBgkqhkiG9w0BCQUxDxcNMTQwMzI0MjA0NjM0WjAjBgkqhkiG9w0B
# CQQxFgQUBGeQYJ7nIPc/WocOJ1VZ+lPZeU8wDQYJKoZIhvcNAQEBBQAEggEAa4u9
# aFi0KLj8dUdjsFtTWJaU1uFTImWhfbpbH4h9kjOuznSGlGOn3CQEVp/bUK6F/nDw
# TiuT3Gr3SBlQStTRVWb9vcDVFXTuFA6GtsfU0U6bdDgvwkjoimTjv/JlDQ1XRRKZ
# 1VHjA9aoMuJTgzkulv+oUHhDlA6bBJhtXNHtqnpNNeCQpYJSVlup2J8KqAm3q0UQ
# 1gA1OSa4PamAYQJkPdw8RKSCbMBKSNlniScb03afTxeD0MqCGI1KGXqTmHDul7d8
# 7nU7wZnn0aEMVFe8It1QijOMjd6WzmA0DnkggG/RxQ9KKWwbvvbPyF5Gu4RY9wM6
# 3VGesAY+Tqjy5PqD8A==
# SIG # End signature block
