﻿import-module webadministration
$DEV_APP_POOL_NAME= "DevAPP_POOL_NAME"
$DEV_WEBSITE_NAME="DevGit_Final_Test"

if(Test-Path IIS:\Sites\$DEV_WEBSITE_NAME)
{
"WebSite is already there"
return $true;
}
else
{
"Website is not present"
"Creating new WebSite"
Import-Module WebAdministration
New-Website -Name "$DEV_WEBSITE_NAME" -PhysicalPath "C:\inetpub\wwwroot\$DEV_WEBSITE_NAME" -ApplicationPool "$DEV_APP_POOL_NAME" -Force
return $false;
}