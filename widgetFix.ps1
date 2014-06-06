param (
	[string]$NUM = 1111,
	[string]$myPath = "C:\" )

cd $myPath
[xml]$myXML = Get-Content $myPath\widget.xml
$VER = $myXML.metadata.version
$myXML.metadata.identifier = "com.crashplayer$NUM.yctv.crashplayer"
Add-Content -Path "$myPath\ver.txt" -Value "$VER"
$myXML.Save("$myPath\widget.xml")
