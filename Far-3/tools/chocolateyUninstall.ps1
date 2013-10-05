$msiId = '{7F3C23A9-F946-46AA-B20F-49083A201D43}'
Uninstall-ChocolateyPackage 'Far' 'MSI' "$msiId /qb" -validExitCodes @(0)
