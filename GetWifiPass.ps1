clear
netsh wlan show profiles
$net = Read-Host "Insert the network name to get the key"
netsh wlan show profile name=$net key=clear