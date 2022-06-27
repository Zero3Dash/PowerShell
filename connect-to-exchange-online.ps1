Set-ExecutionPolicy RemoteSigned
Set-ExecutionPolicy Unrestricted
#In a PowerShell window, load the EXO V2 module by running the following command:
Import-Module ExchangeOnlineManagement
#
Connect-ExchangeOnline -UserPrincipalName cjoy.sa@beyondtrust.com -ShowProgress $true -Verbose
#
Connect-ExchangeOnline -InlineCredential
#
$SessionOption = New-PSSessionOption -Culture "en-US"
Connect-ExchangeOnline -Credential $Credential -PSSessionOption $SessionOption
#
Disconnect-ExchangeOnline