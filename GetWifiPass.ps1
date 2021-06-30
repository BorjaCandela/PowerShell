while($true)
{
    clear
    netsh wlan show profiles
    $net = Read-Host "Inserta el nombre de la red de la que quieras su contraseña o pulsa Q para salir"
    if($net -eq "q" -or $net -eq "Q"){
        exit        
    } else {
        netsh wlan show profile name=$net key=clear | Select-String -Pattern 'Contenido de la clave'
        Write-Host ""
        Read-Host -Prompt "Pulsa intro para comprobar otra clave"
    }
}