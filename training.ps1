<# Version 7.2
.SYNOPSIS
    This is an exmaple of some basic conventions for having beautiful powershell
    The program accepts you name and age, and greets you with the date

.PARAMETER Name
    Name to address you by

.INPUTS 
    None <Typically, if there is no input, omit this section>

.OUTPUTS
    None <Typically, if there is no output, omit this section>

.EXAMPLE
    .\training Nich 22

.NOTES
    I do not code in powershell, so I may be missing a few things. This is just what I have seen from guides
#>

[CmdletBinding()] 
param(
    [Parameter(Mandatory = $true)]
    [ValidateNotNullOrEmpty()]
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

