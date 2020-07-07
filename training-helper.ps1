function Get-DateTimeCustom {
    [CmdletBinding()] param()
    process {
        Get-Date -Format "dddd, MMMM dd, yyyy"
    }
}
