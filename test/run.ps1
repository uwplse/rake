$tblFile = "result_table.csv"
if (Test-Path $tblFile) {
  Remove-Item $tblFile
}

Get-ChildItem $args[0] -Filter *.rkt | 
Foreach-Object {
	$bmName = Split-Path $_.DirectoryName -Leaf
	$rktFile = $_
	$filedir = join-path $_.DirectoryName $_.BaseName
	$logFile = "$($filedir)_log.txt"
	$exitcode = 0
	$runtime = Measure-Command {
		Racket.exe $_.FullName | Out-File -FilePath $logFile
		$exitcode = $LASTEXITCODE
	}
	if ( $exitcode -eq 0 )
	{
	    "$($bmName), $($rktFile), passed, $([math]::ceiling($runtime.TotalSeconds))s" | Out-Default
	    "$($bmName), $($rktFile), passed, $([math]::ceiling($runtime.TotalSeconds))s" | Out-File -Append -FilePath $tblFile
	}
	else {
		"$($bmName), $($rktFile), failed, $([math]::ceiling($runtime.TotalSeconds))s" | Out-Default
		"$($bmName), $($rktFile), failed, $([math]::ceiling($runtime.TotalSeconds))s" | Out-File -Append -FilePath $tblFile
	}
}