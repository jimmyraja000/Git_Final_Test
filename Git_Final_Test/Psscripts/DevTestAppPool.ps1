import-module webadministration

$DEV_APP_POOL_NAME="DevGit_Final_Test"

if(Test-Path IIS:\AppPools\$AppPoolName)
{
"AppPool is already there"
return $true;
}
else
{
"AppPool is not present"
"Creating new AppPool"
New-WebAppPool "$DEV_APP_POOL_NAME=" -Force
return $false;
}