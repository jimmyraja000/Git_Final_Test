import-module webadministration
$PREPROD_APP_POOL_NAME= "PreProdAPP_POOL_NAME"
$PREPROD_WEBSITE_NAME="PreProdGit_Final_Test"

if(Test-Path IIS:\Sites\$PREPROD_WEBSITE_NAME)
{
"WebSite is already there"
return $true;
}
else
{
"Website is not present"
"Creating new WebSite"
Import-Module WebAdministration
New-Website -Name "$PREPROD_WEBSITE_NAME" -PhysicalPath "C:\inetpub\wwwroot\$PREPROD_WEBSITE_NAME" -ApplicationPool "$PREPROD_APP_POOL_NAME" -Force
return $false;
}