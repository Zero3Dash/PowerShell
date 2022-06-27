#To require all PowerShell scripts that you download from the internet are signed by a trusted publisher
#run the following command in an elevated PowerShell window (a PowerShell window you open by selecting Run as administrator):
Set-ExecutionPolicy RemoteSigned
#To install the latest public version of the module, run one of the the following commands:
#In an elevated PowerShell window (all users):
Install-Module -Name ExchangeOnlineManagement
#To see the version of the module that's currently installed, run the following commands:
Import-Module ExchangeOnlineManagement; Get-Module ExchangeOnlineManagement
#To upgrade to the latest public version of the module
Update-Module -Name ExchangeOnlineManagement
#check auth
winrm get winrm/config/client/auth
winrm set winrm/config/client/auth @{Basic="true"}