if (Get-Module -ListAvailable -Name Posh-SSH) {
# To change the certification policy
# Set-PowerCLIConfiguration -InvalidCertificateAction Prompt
# Get-PowerCLIConfiguration

# Read hostname/ip address and VM name
    $esxiHostIP = Read-Host ("ESXi IP Address")
    $vmName = Read-Host ("Virtual Machine name")
    Connect-VIServer $esxiHostIP

# It does not work with free license
    Get-Snapshot $vmName | Remove-Snapshot -confirm:$false # Delete snapshots
    Get-VM -Name $vmName | Shutdown-VMGuest -confirm:$false # Shutdown machine
    Get-VM -Name $vmName | Get-CDDrive | Set-CDDrive -NoMedia -confirm:$false # Remove CD
    Get-VM -Name $vmName | Export-VApp -Destination C:\Users\$env:UserName\Desktop -Format OVA|OVF # Export as OVA/OVF
} 
else {
    Write-Host "Please install PowerCli: 
        Install-Module -Name VMware.PowerCLI
    And retry again."
}

