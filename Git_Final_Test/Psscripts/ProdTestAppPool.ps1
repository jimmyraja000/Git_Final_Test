import-module webadministration

$PROD_APP_POOL_NAME="ProdAPP_POOL_NAME"

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
New-WebAppPool "$PROD_APP_POOL_NAME" -Force
return $false;
}