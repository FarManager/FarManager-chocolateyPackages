$msiId = '{AAF36915-D499-429A-B3E7-0AF081AE0523}'
Uninstall-ChocolateyPackage 'Far' 'MSI' "$msiId /qb" -validExitCodes @(0)
