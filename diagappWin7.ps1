New-Variable -Name PathRoot -Value $env:WinDir.Substring(0,3)
Mkdir $PathRoot\DiagTest
Write-OutPut ========================================================================================= > $PathRoot\DiagTest\diag.txt
wmic os get Caption >> $PathRoot\DiagTest\diag.txt
Write-Output `n >> $PathRoot\DiagTest\diag.txt
Write-OutPut ========================================================================================= >> $PathRoot\DiagTest\diag.txt
wmic os get SystemDrive >> $PathRoot\DiagTest\diag.txt
Write-OutPut `n >> $PathRoot\DiagTest\diag.txt
Write-OutPut ========================================================================================= >> $PathRoot\DiagTest\diag.txt
wmic diskdrive get status >> $PathRoot\DiagTest\diag.txt
Write-OutPut `n >> $PathRoot\DiagTest\diag.txt
Write-OutPut ========================================================================================= >> $PathRoot\DiagTest\diag.txt
wmic /namespace:\\root\wmi path MSStorageDriver_FailurePredictStatus >> $PathRoot\DiagTest\diag.txt
Write-OutPut `n >> $PathRoot\DiagTest\diag.txt
Write-OutPut ========================================================================================= >> $PathRoot\DiagTest\diag.txt
chkdsk c: /scan >> $PathRoot\DiagTest\diag.txt
Write-OutPut `n >> $PathRoot\DiagTest\diag.txt
Write-OutPut ========================================================================================= >> $PathRoot\DiagTest\diag.txt
Write-OutPut `n >> $PathRoot\DiagTest\diag.txt
defrag c: /A >> $PathRoot\DiagTest\diag.txt
Get-Content $PathRoot\DiagTest\diag.txt
Remove-Item -Recurse $PathRoot\DiagTest
Write-Output "Ejecucion terminanda"

# iex ((New-Object System.Net.WebClient).DownloadString('https://bit.ly/3xcdPCD'))