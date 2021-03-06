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

# .ExternalHelp ScsmPx-help.xml
function Get-ScsmPxConnectedUser {
    [CmdletBinding(DefaultParameterSetName='FromManagementGroupConnection')]
    [OutputType('ScsmPx.ConnectedUser')]
    param(
        [Parameter(ParameterSetName='FromManagementGroupConnection')]
        [ValidateNotNullOrEmpty()]
        [Microsoft.SystemCenter.Core.Connection.Connection[]]
        $SCSession,

        [Parameter(Mandatory=$true, ParameterSetName='FromComputerName')]
        [ValidateNotNullOrEmpty()]
        [System.String[]]
        $ComputerName,

        [Parameter(ParameterSetName='FromComputerName')]
        [ValidateNotNull()]
        [System.Management.Automation.PSCredential]
        [System.Management.Automation.Credential()]
        $Credential = [System.Management.Automation.PSCredential]::Empty
    )
    try {
        #region Get the Enterprise Management Group.

        $emg = Get-ScsmPxEnterpriseManagementGroup @PSBoundParameters

        #endregion

        #region Return a record for each user that is connected indicating how many times they are connected.

        foreach ($entry in $emg.GetConnectedUserNames() | Group-Object) {
            $domain,$userName = $entry.Group[0] -split '\\'
            try {
                $user = Get-ScsmPxUserOrGroup -Name "${domain}.${userName}" @PSBoundParameters
            } catch {
                $user = $entry.Group
            }
            $connectedUserRecord = New-Object -TypeName PSCustomObject
            Add-Member -InputObject $connectedUserRecord -MemberType NoteProperty -Name User -Value $user
            Add-Member -InputObject $connectedUserRecord -MemberType NoteProperty -Name ConnectionCount -Value $entry.Count
            $connectedUserRecord.PSTypeNames.Insert(0, 'ScsmPx.ConnectedUser')
            $connectedUserRecord 
        }

        #endregion
    } catch {
        throw
    }
}

Export-ModuleMember -Function Get-ScsmPxConnectedUser