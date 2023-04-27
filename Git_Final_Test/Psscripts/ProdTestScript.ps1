$PROD_WEBSITE_NAME="ProdGit_Final_Test"
$dir = "C:\inetpub\wwwroot\$PROD_WEBSITE_NAME"
if(!(Test-Path -Path $dir )){
    New-Item -ItemType directory -Path $dir
    Write-Host "New folder created"
}
else
{
  Write-Host "Folder already exists"
}