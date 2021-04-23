Get-ChildItem *.rkt -Recurse | 
Foreach-Object {
	$bmName = Split-Path (Split-Path $_ -Parent) -Leaf
	$rktFile = $_.Name
	$filedir = join-path $_.DirectoryName $_.BaseName
	$logFile = "$($filedir)_log.txt"
	Racket.exe $_ | Out-File -FilePath $logFile
	if ( $LASTEXITCODE -eq 0 )
	{
	    "$($bmName), $($rktFile), passed" | Out-Default
	}
	else {
		"$($bmName), $($rktFile), failed" | Out-Default
	}
}