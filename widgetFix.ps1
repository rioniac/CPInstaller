param (
	[string]$NUM = 1111,
	[string]$myPath = "C:\" )

cd $myPath
[xml]$widget = Get-Content $myPath\widget.xml
$VER = $widget.metadata.version
$widget.metadata.identifier = "com.crashplayer$NUM.yctv.crashplayer"
Add-Content -Path "$myPath\ver.txt" -Value "$VER"
$widget.Save("$myPath\widget.xml")
