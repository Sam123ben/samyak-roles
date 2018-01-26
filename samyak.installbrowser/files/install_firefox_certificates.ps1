#!/usr/local/bin/pwsh

$USER_PROFILE = defaults read /Library/Preferences/com.apple.loginwindow lastUserName
$HOME_PATH = $HOME
$LOGIN_USER = whoami
$GROUP = groups $USER_PROFILE | cut -d' ' -f1

$PROFILE_PATH = "$HOME_PATH/Library/Application Support/Firefox/Profiles/"

if (!(Test-Path $PROFILE_PATH)){
  Write-Output "The $PROFILE_PATH is not present..."
  Write-Output "NO FIREFOX INSTALLED... PLEASE DO INSTALL IT BY EXECUTING THE DEV_SETUP ANSIBLE SCRIPT TO SETUP YOUR DEVELOPER ENVIRONMENT..."
}

else{
  Write-Output "Copying the FireFox certificates to each profile..."
  foreach ($profile_name in "$HOME_PATH/Library/Application Support/Firefox/Profiles/"){
    unzip -o "$HOME_PATH/Destop/Dev_Setup_Scripts/store.zip" -d "$profile_name" 
    Write-Output "The certificate is unzipped and copied to $profile_name"
  }
}
