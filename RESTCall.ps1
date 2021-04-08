    $url = "https://remotesite.dom/restapp?param1="    # REST Method url
    $param1 = Read-Host "Insert the value of the param1"    # The script ask for the value of the first parameter
    $param2 = "&param2=value2"    # Second Parameter could be hardcoded....
    $call = "$url$text$voice"

    # Write-Host  "$call"    # To test the entire URI string
    # $result = Invoke-RestMethod -Uri "$call"-Method Get   # Dropping the response into a variable if you need it
    Invoke-RestMethod -Uri "$call"-Method Get   # REST call