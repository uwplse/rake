Get-ChildItem *.rkt | 
Foreach-Object {
	$rktFile = $_.Name
	$logFile = "$([io.path]::GetFileNameWithoutExtension($rktFile))_log.txt"
	$rktFile | Out-Default
	Measure-Command { Racket.exe $rktFile | Out-File -FilePath $logFile }
}