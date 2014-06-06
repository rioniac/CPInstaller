$ID=$args[0]

(Get-Content widget.xml) | ForEach-Object { $_ -replace "com.crashplayer.yctv.crashplayer", "com.crashplayer$ID.yctv.crashplayer" } | Set-Content widget.xml
