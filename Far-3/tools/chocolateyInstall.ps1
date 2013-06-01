#Changes per version
$uninstallKey = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{AAF36915-D499-429A-B3E7-0AF081AE0523}'
if (Test-Path $uninstallKey) {
    Write-ChocolateyFailure 'Far is already installed!'
}
else {
    Install-ChocolateyPackage `
        "Far-3" 'msi' '/quiet ADDLOCAL=Addons,Colors,Macros,SetUp,Shell,XLat,arclite,FARCmds,NetBox,Compare,EMenu,FarColorer,FileCase,Network,HlfViewer,Proclist,Editor,LuaMacro,TmpPanel' `
        "http://farmanager.com/files/Far30b3367.x86.20130426.msi" `
        "http://farmanager.com/files/Far30b3367.x64.20130426.msi"
}