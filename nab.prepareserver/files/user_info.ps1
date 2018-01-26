#!/usr/local/bin/pwsh

  Clear-Host
  Write-Output "`n..............................................................`n"
  Write-Output "This script will perform the following tasks:`n"
  Write-Output " - Install Homebrew if it is not installed`n"
  Write-Output " - Create new network location named 'NAB'`n"
  Write-Output " - Set up proxy settings`n"
  Write-Output " - Add NAB CA certificates to openSSL`n"
  Write-Output " - Add NAB CA certificates to system keychain`n"
  Write-Output " - Add NAB CA certificates to Firefox`n"
  Write-Output " - Add NAB CA certificates to JAVA keystore`n"
  Write-Output " - Install rbenv and ruby`n"
  Write-Output " - Add Artifactory as gem source`n"
  Write-Output " - Install cocoapods, cocoapods-art and bundler`n"
  Write-Output " - Add ext-cocoapods-remote`n"
  Write-Output "..............................................................`n"
