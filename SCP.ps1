if (Get-Module -ListAvailable -Name Posh-SSH) {

    # This snippet have a dependency called Posh-SSH that its a PowerShell Module
    # You can use variables or evertything that you need 
    # This snippet by itself is not useful at all, but its perfect to use in bigger scripts because its runs perfectly
    # $env:Username will use the current username

    $credential = Get-Credential    # A promt will appear asking for the login

    Get-SCPFile -ComputerName "HOST ADDRESS/NAME" -Credential $credential -RemoteFile "Remote Path+File goes here" -LocalFile "C:\Users\$env:UserName\Desktop\NewFileName.ext" 

} 
else {

    Write-Host "Please install the PowerShell Posh-SSH module with the following command: 
        Install-Module -Name Posh-SSH
    After that, run again this script."
    
}