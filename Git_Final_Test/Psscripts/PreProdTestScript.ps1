$PREPROD_WEBSITE_NAME="PreProdGit_Final_Test"
$dir = "C:\inetpub\wwwroot\$PREPROD_WEBSITE_NAME="
if(!(Test-Path -Path $dir )){
    New-Item -ItemType directory -Path $dir
    Write-Host "New folder created"
}
else
{
  Write-Host "Folder already exists"
}