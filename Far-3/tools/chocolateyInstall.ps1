#Changes per version
$uninstallKey = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\{7F3C23A9-F946-46AA-B20F-49083A201D43}'
if (Test-Path $uninstallKey) {
    Write-ChocolateyFailure 'Far is already installed!'
}
else {
    Install-ChocolateyPackage `
        "Far-3" 'msi' '/quiet ADDLOCAL=ALL' `
        "http://farmanager.com/files/Far30b3525.x86.20130717.msi" `
        "http://farmanager.com/files/Far30b3525.x64.20130717.msi"
}
