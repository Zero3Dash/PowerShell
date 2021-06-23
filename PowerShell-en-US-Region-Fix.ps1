#
# To resolve the issue of some powershell commands needing the computers region to be set to en-us
# when it's set to anyother that en-us
#
#
# set region/culture
$usSession = New-PSSessionOption -Culture en-US -UICulture en-US
# run command as en-us
Invoke-Command -SessionOption $usSession #rest of you script
#