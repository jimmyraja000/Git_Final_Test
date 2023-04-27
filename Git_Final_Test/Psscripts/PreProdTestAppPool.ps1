import-module webadministration

$PREPROD_APP_POOL_NAME="PreProdAPP_POOL_NAME"

if(Test-Path IIS:\AppPools\$AppPoolName)
{
"AppPool is already there"
return $true;
}
else
{
"AppPool is not present"
"Creating new AppPool"
Import-Module WebAdministration
New-WebAppPool "$PREPROD_APP_POOL_NAME" -Force
return $false;
}