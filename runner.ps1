$frames = @()
for ($i = 1; $i -le 168; $i++) {
    $frames += "https://raw.githubusercontent.com/SuperlySuperKid/Merp-In-Powershell/main/frames/ASCII($i).txt"
}

while ($true) {
    foreach ($url in $frames) {
        try {
            $frame = Invoke-RestMethod $url
            Write-Host $frame
        } catch {
            Write-Host "Error loading $url"
        }
        Start-Sleep -Milliseconds 75
        Clear-Host
    }
}
