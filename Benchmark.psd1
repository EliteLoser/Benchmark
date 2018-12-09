#
# Module manifest for module 'PSGet_Benchmark'
#
# Generated by: Joakim Borger Svendsen
#
# Generated on: 12/9/2018
#
# 2017-12-01: v1.2.1. Make numbers returned a numeric type for easier use with comparison
#             operators like -gt, -ge, -le and -lt. Use [Math]::Round() instead of
#             the string formatting operator -f.
# 2017-12-02: v1.2.2. Minor doc fixes (e.g. s/comma (separator)/decimal $1/). Make $Precision a Byte.
#             Use [CmdletBinding()] and add scaffolding.

@{

    # Script module or binary module file associated with this manifest.
    # RootModule = ''

    # Version number of this module.
    ModuleVersion = '1.2.2.1'

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
    GUID = 'c09f899c-7cd1-4c2a-b5f1-fb3481e1e022'

    # Author of this module
    Author = 'Joakim Borger Svendsen'

    # Company or vendor of this module
    CompanyName = 'Svendsen Tech'

    # Copyright statement for this module
    Copyright = 'Copyright (c) 2012-present, Joakim Borger Svendsen, Svendsen Tech. All rights reserved.'

    # Description of the functionality provided by this module
    Description = 'Svendsen Tech''s Benchmark module provides a convenient interface to benchmark and compare execution speed of code blocks containing arbitrary PowerShell code. GitHub here: https://github.com/EliteLoser/Benchmark - Online documentation here: https://www.powershelladmin.com/wiki/PowerShell_benchmarking_module_built_around_Measure-Command'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '2.0'

    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    DotNetFrameworkVersion = '3.5'

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = 'Measure-These'

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = @()

    # Variables to export from this module
    # VariablesToExport = @()

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = @()

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList = @()

    # List of all files packaged with this module
    FileList = 'Benchmark.psm1', 'Benchmark.psd1'

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('Benchmark', 'Speed', 'Benchmarking')

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/EliteLoser/Benchmark/blob/master/LICENSE'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/EliteLoser/Benchmark'

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            ReleaseNotes = '
    * Fix module metadata.
    * Minor polishing (OCD-like).'

            # External dependent modules of this module
            # ExternalModuleDependencies = ''

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    HelpInfoURI = 'https://www.powershelladmin.com/wiki/PowerShell_benchmarking_module_built_around_Measure-Command'

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}
