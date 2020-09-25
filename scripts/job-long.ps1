[CmdletBinding()]
Param()

@"
This would be where some long operation would be started on a remote service.
Something like a long ARM template run or maybe creating an image version in
a shared image gallery. Either way we don't want to tie up an agent waiting
for whatever the long operation is to complete so we'll just kick off the job
and put some information in an output variable so we can check on things later.
"@ | Write-Host

$jobLength = Get-Random -Minimum 2 -Maximum 15
Write-Host "Job Length: $jobLength"
Write-Host "##vso[task.setvariable variable=shouldrun;isOutput=true]$jobLength"
