Write-Host "Moviendo!"

while ($true){
    Start-Sleep -Seconds 60
    $Pos = [System.Windows.Forms.Cursor]::Position
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((($Pos.X) + 1) , $Pos.Y)
}