# The MSI can't be renamed or it won't install. See: http://forum.farmanager.com/viewtopic.php?f=37&t=7989
if ([IntPtr]::Size -eq 8) { $arch = 'x86' }
else { $arch = 'x64' }
$msiName = "Far30b3367.$($arch).20130426.msi"
Install-ChocolateyPackage $msiName 'msi' '/quiet ADDLOCAL=Addons,Colors,Macros,SetUp,Shell,XLat' "http://farmanager.com/files/$msiName" "http://farmanager.com/files/$msiName"
