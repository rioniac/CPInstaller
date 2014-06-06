param (
	[string]$NUM = 1111,
	[string]$myPath = "C:\" )

cd $myPath
[xml]$myXML = Get-Content $myPath\widget.xml
$VER = $myXML.metadata.version
$myXML.metadata.identifier = "com.crashplayer$NUM.yctv.crashplayer"
$VER | Out-File $myPath\ver.txt
$myXML.Save("$myPath\widget.xml")
