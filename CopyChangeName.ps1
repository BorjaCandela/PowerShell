
For ($i=1; $i -le 10; $i++) {
    Copy-Item "C:\Users\$($env:USERNAME)\FileToCopy.txt" -Destination "C:\Users\$($env:USERNAME)\DestinationFile$i.txt"
    }