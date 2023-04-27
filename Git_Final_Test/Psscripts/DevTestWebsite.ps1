import-module webadministration

$DEV_WEBSITE_NAME="DevGit_Final_Test"

if(Test-Path IIS:\WebSite\$DEV_WEBSITE_NAME)
{
"WebSite is already there"
return $true;
}
else
{
"AppPool is not present"
"Creating new AppPool"
Import-Module WebAdministration
New-Website -Name $DEV_WEBSITE_NAME -PhysicalPath "C:\inetpub\wwwroot\$DEV_WEBSITE_NAME" -ApplicationPool ${{env.DEV_APP_POOL_NAME}}
return $false;
}