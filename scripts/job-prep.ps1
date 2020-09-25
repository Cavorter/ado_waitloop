[CmdletBinding()]
Param(
    [string]$Environment
)

@"
This is where we would do some sort of preparation for the $Environment environment
before we start running the actual tasks. Maybe we even check conditions in this job
before kicking off subsequent jobs if we don't always want to start the long running
tasks.
"@ | Write-Host