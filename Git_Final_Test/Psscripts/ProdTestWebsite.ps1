import-module webadministration
$PROD_APP_POOL_NAME= "ProdAPP_POOL_NAME"
$PROD_WEBSITE_NAME="ProdGit_Final_Test"

if(Test-Path IIS:\Sites\$PROD_WEBSITE_NAME)
{
"WebSite is already there"
return $true;
}
else
{
"Website is not present"
"Creating new WebSite"
Import-Module WebAdministration
New-Website -Name "$PROD_WEBSITE_NAME" -PhysicalPath "C:\inetpub\wwwroot\$PROD_WEBSITE_NAME" -ApplicationPool "$PROD_APP_POOL_NAME" -Force
return $false;
}