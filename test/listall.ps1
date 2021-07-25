Get-ChildItem *.rkt -Recurse | 
Foreach-Object {
	$bmName = Split-Path (Split-Path $_ -Parent) -Leaf
	$rktFile = $_.Name
	$filedir = join-path $_.DirectoryName $_.BaseName
	"$($bmName), $($rktFile) " | Out-Default
}