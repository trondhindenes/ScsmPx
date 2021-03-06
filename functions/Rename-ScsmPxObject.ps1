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
function Rename-ScsmPxObject {
    [CmdletBinding(SupportsShouldProcess=$true)]
    [OutputType([Microsoft.EnterpriseManagement.Core.Cmdlets.Instances.EnterpriseManagementInstance])]
    param(
        [Parameter(Position=0, Mandatory=$true, ValueFromPipeline=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNull()]
        [Alias('EnterpriseManagementInstance')]
        [Microsoft.EnterpriseManagement.Core.Cmdlets.Instances.EnterpriseManagementInstance]
        $InputObject,

        [Parameter(Position=1, Mandatory=$true, ValueFromPipelineByPropertyName=$true)]
        [ValidateNotNullOrEmpty()]
        [System.String]
        $NewName,

        [Parameter()]
        [System.Management.Automation.SwitchParameter]
        $PassThru
    )
    begin {
        try {
            #region Ensure that objects are sent through the pipeline one at a time.

            $outBuffer = $null
            if ($PSCmdlet.MyInvocation.BoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
                $PSCmdlet.MyInvocation.BoundParameters['OutBuffer'] = 1
            }

            #endregion

            #region Add empty credential support, regardless of the function being proxied.

            if ($PSCmdlet.MyInvocation.BoundParameters.ContainsKey('Credential') -and ($Credential -eq [System.Management.Automation.PSCredential]::Empty)) {
                $PSCmdlet.MyInvocation.BoundParameters.Remove('Credential') > $null
            }

            #endregion

            #region Look up the command being proxied.

            $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand('Update-SCClassInstance', [System.Management.Automation.CommandTypes]::Cmdlet)

            #endregion

            #region If the command was not found, throw an appropriate command not found exception.

            if (-not $wrappedCmd) {
                [System.String]$message = $PSCmdlet.GetResourceString('DiscoveryExceptions','CommandNotFoundException')
                [System.Management.Automation.CommandNotFoundException]$exception = New-Object -TypeName System.Management.Automation.CommandNotFoundException -ArgumentList ($message -f 'Update-SCClassInstance')
                $exception.CommandName = 'Update-SCClassInstance'
                [System.Management.Automation.ErrorRecord]$errorRecord = New-Object -TypeName System.Management.Automation.ErrorRecord -ArgumentList $exception,'DiscoveryExceptions',([System.Management.Automation.ErrorCategory]::ObjectNotFound),'Update-SCClassInstance'
                $PSCmdlet.ThrowTerminatingError($errorRecord)
            }

            #endregion

            #region Replace any InputObject bound parameters with an Instance bound parameter.

            if ($PSCmdlet.MyInvocation.BoundParameters.ContainsKey('InputObject')) {
                $PSCmdlet.MyInvocation.BoundParameters['Instance'] = $PSCmdlet.MyInvocation.BoundParameters['InputObject']
                $PSCmdlet.MyInvocation.BoundParameters.Remove('InputObject') > $null
            }

            #endregion

            #region Remove the NewName parameter from the passthru parameter list and define ShouldProcess helper arguments.

            $PSCmdlet.MyInvocation.BoundParameters.Remove('NewName') > $null
            $ShouldProcessArguments = @{
                Description = "Setting property ""DisplayName"" on ""{0}""."
                Warning = "Set property ""DisplayName"" on ""{0}"""
            }

            #endregion

            #region Remove the PassThru parameter.

            # This is necessary to work around a bug in how Update-SCClassInstance passes through objects
            # (it re-adds all of the PS Properties to the object passed in).

            if ($PassThru = ($PSCmdlet.MyInvocation.BoundParameters.ContainsKey('PassThru') -and $PassThru)) {
                $PSCmdlet.MyInvocation.BoundParameters.Remove('PassThru') > $null
            }

            #endregion

            #region Create the proxy command script block.

            $scriptCmd = {& $wrappedCmd @PSBoundParameters}

            #endregion

            #region Use the script block to create the steppable pipeline, then invoke its begin block.

            $steppablePipeline = $scriptCmd.GetSteppablePipeline($myInvocation.CommandOrigin)
            $steppablePipeline.Begin($PSCmdlet)

            #endregion
        } catch {
            throw
        }
    }
    process {
        try {
            #region Assign the properties to the element that was just received from the previous stage in the pipeline.

            if ($PSCmdlet.ShouldProcess(($ShouldProcessArguments.Description -f $InputObject.DisplayName), 'Confirm', ($ShouldProcessArguments.Warning -f $InputObject.DisplayName))) {
                $InputObject.DisplayName = $NewName
            }

            #endregion.

            #region Process the element that was just received from the previous stage in the pipeline.

            $steppablePipeline.Process($_)

            #endregion

            #region If the object was to be passed through, pass it though.

            if ($PassThru) {
                $_
            }

            #endregion
        } catch {
            throw
        }
    }
    end {
        try {
            #region Close the pipeline.

            $steppablePipeline.End()

            #endregion
        } catch {
            throw
        }
    }
}

Export-ModuleMember -Function Rename-ScsmPxObject