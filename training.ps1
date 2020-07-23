<# Version 7.2
.SYNOPSIS
    Basic conventions for having beautiful powershell
    
.DESCRIPTION
    This script is an example, demonstrating some of the basic conventions of how you want your
    powershell to be designed as. It will take in your name as a parameter- if you don't,
    it will force you to enter it (because of the 'Parameter(Mandatory).

.PARAMETER Name
    Name to address you by

.INPUTS 
    None <Typically, if there is no input, omit this section>

.OUTPUTS
    None <Typically, if there is no output, omit this section>

.EXAMPLE
    .\training Nich
    .\training -Name "Abraham Lincoln"
    .\training -n ABBA

.NOTES
    I am also just learning Powershell, so I may be missing a few things. This is just what I have seen from guides!
    Feel free to email me @ nfeingold@ceriumnetworks.com (or just PM me) with any questions you may have.
    I am adding this as a note to test changes with OneDrive
#>

[CmdletBinding()] 
param(
    [Parameter(Mandatory)]
    [ValidateNotNullOrEmpty()]
    [Alias('n')]
    [String]$Name
)

begin {
    . (Join-Path -Path $PSScriptRoot -ChildPath training-helper.ps1) # Include function from other file
    Write-Host "Beginning Function Testing in Powershell 7.2"

    function ReverseName {
        param(
            [String]$Name
        )

        process {
            $RevNameProc = $Name.ToCharArray()
            [array]::Reverse($RevNameProc)
            $RevName = -Join($RevNameProc)
            $RevName
        }
    }
}


process {
    $RevName = ReverseName($Name)
    Write-Host "`nHello ${Name}, your name reversed is $RevName"
    Write-Host "Today is $(Get-DateTimeCustom)"
}


end {
    Write-Host "`nExiting Function Testing`n"
}

