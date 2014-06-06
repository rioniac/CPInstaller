1) To see the path of 7zip (i.e. does it exist):  
```
where 7z
```  

2) To add 7zip to path:
```  
set NEW=where 7z  
set PATH=%PATH%;%NEW%  
```  
  
3) To extract original downloaded zip file:
```
7z x CRASHPlayer-master.zip
```
  
4) To change to the directory we want:  
```
cd CRASHPlayer-master\CRASHPlayer.widget\Contents\
```

5) To edit the widget.xml file:
```
blabla
```

6) To replace foo with bar (powershell):
```
(Get-Content widget.xml) | ForEach-Object { $_ -replace "foo", "bar" } | Set-Content widget.xml
```

7) To pass argument to powershell script:
```
$step=$args[0]

$iTunes = New-Object -ComObject iTunes.Application

if ($iTunes.playerstate -eq 1)
{
  $iTunes.PlayerPosition = $iTunes.PlayerPosition + $step
}

powershell.exe itunersforward.ps1 15
```
