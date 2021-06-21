clear
netsh wlan show profiles
$net = Read-Host "Inserta el nombre de la red de la que quieras su contraseña"
netsh wlan show profile name=$net key=clear