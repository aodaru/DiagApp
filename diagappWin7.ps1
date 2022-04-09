New-Variable -Name PathUser -Value $env:USERPROFILE
Write-OutPut ========================================================================================= > $PathUser\Desktop\diag.txt
wmic os get Caption >> $PathUser\Desktop\diag.txt
Write-Output `n >> $PathUser\Desktop\diag.txt
Write-OutPut ========================================================================================= >> $PathUser\Desktop\diag.txt
wmic os get SystemDrive >> $PathUser\Desktop\diag.txt
Write-OutPut `n >> $PathUser\Desktop\diag.txt
Write-OutPut ========================================================================================= >> $PathUser\Desktop\diag.txt
wmic diskdrive get status >> $PathUser\Desktop\diag.txt
Write-OutPut `n >> $PathUser\Desktop\diag.txt
Write-OutPut ========================================================================================= >> $PathUser\Desktop\diag.txt
wmic /namespace:\\root\wmi path MSStorageDriver_FailurePredictStatus >> $PathUser\Desktop\diag.txt
Write-OutPut `n >> $PathUser\Desktop\diag.txt
Write-OutPut ========================================================================================= >> $PathUser\Desktop\diag.txt
chkdsk c: /scan >> $PathUser\Desktop\diag.txt
Write-OutPut `n >> $PathUser\Desktop\diag.txt
Write-OutPut ========================================================================================= >> $PathUser\Desktop\diag.txt
Write-OutPut `n >> $PathUser\Desktop\diag.txt
defrag c: /A >> $PathUser\Desktop\diag.txt