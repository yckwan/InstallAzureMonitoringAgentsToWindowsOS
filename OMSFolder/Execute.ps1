$csv = Import-Csv C:\OMSFolder\serverlist.csv
foreach ($line in $csv) {
$Computer = $line.ServerName
Write-Host "Installing Azure Agent Agent " -NoNewline -ForegroundColor Red
Write-Host $Computer -NoNewline -ForegroundColor Red
Write-Host "..." -ForegroundColor Red
$session = New-PSSession –ComputerName $Computer
Invoke-Command -FilePath C:\OMSFolder\CreateFolder.ps1 -ComputerName $Computer
Copy-Item –Path C:\OMSFolder\* –Destination 'C:\OMSFolder' –ToSession $session
Invoke-Command -FilePath C:\OMSFolder\InstallAzureAgents.ps1 -ComputerName $Computer
$session | Remove-PSSession
Write-Host "Finish Azure Agent Agent " -NoNewline -ForegroundColor Blue
Write-Host $Computer -NoNewline -ForegroundColor Blue
}
Write-Host "Finish Installation!" -ForegroundColor Blue
