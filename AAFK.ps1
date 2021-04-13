Write-Host "Moving!"
$minutes = 300
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
for ($i = 0; $i -lt $minutes; $i++) {
    Start-Sleep -Seconds 60
    $Pos = [System.Windows.Forms.Cursor]::Position
    [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point((($Pos.X) + 1) , $Pos.Y)
}
