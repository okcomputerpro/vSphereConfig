#
# Module manifest for module 'vSphereConfig'
#
# Generated on: 1/7/2015
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'vSphereConfig.psm1'

# Version number of this module.
ModuleVersion = '1.0.0'

# ID used to uniquely identify this module
#GUID = 'f7edec59-261e-43e3-818c-6d92653ff05c'

# Author of this module
Author = 'Erwan Quelin'

# Company or vendor of this module
CompanyName = 'None'

# Copyright statement for this module
Copyright = 'MIT License (included in module)'

# Description of the functionality provided by this module
Description = 'Module with functions to configure ESXi based on a JSON file'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '4.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = 'VMware.Vim.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
#ScriptsToProcess = 'vSphereConfig.init.ps1'

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
#FormatsToProcess = 'vSphereConfig.format.ps1xml'

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = 'vSphereConfigUtil'

# Functions to export from this module
FunctionsToExport = 'Set-JSONtoESXi'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module
AliasesToExport = '*'

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
FileList = 'vSphereConfig.psm1','vSphereConfig.psd1',
           'vSphereConfigUtil.psm1','vSphereConfigUtil.psd1'

# Private data to pass to the module specified in RootModule/ModuleToProcess
# PrivateData = ''

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}
