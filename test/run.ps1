Get-ChildItem $args[0] -Filter *.rkt | 
Foreach-Object {
	$bmName = Split-Path $_.DirectoryName -Leaf
	$rktFile = $_
	$filedir = join-path $_.DirectoryName $_.BaseName
	$logFile = "$($filedir)_log.txt"
	Racket.exe $_.FullName | Out-File -FilePath $logFile
	if ( $LASTEXITCODE -eq 0 )
	{
	    "$($bmName), $($rktFile), passed" | Out-Default
	}
	else {
		"$($bmName), $($rktFile), failed" | Out-Default
	}
}