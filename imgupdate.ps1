Copy-Item -Path "\\192.168.100.2\catalog\Image\ACa2302a.t4t" -Destination "C:\3apps\Catalog\AC\ACa2302a.t4t" -Force
Copy-Item -Path "\\192.168.100.2\catalog\Image\ACb2302a.t4t" -Destination "C:\3apps\Catalog\AC\ACb2302a.t4t" -Force
Copy-Item -Path "\\192.168.100.2\catalog\Image\ACc2302a.t4t" -Destination "C:\3apps\Catalog\AC\ACc2302a.t4t" -Force
Copy-Item -Path "\\192.168.100.2\catalog\Image\ACd2302a.t4t" -Destination "C:\3apps\Catalog\AC\ACd2302a.t4t" -Force
Copy-Item -Path "\\192.168.100.2\catalog\Image\ACe2302a.t4t" -Destination "C:\3apps\Catalog\AC\ACe2302a.t4t" -Force

$destinationPath = "C:\3apps\Catalog\AC\"
$destinationFiles = Get-ChildItem -Path $destinationPath
$lastWriteTimes = $destinationFiles | ForEach-Object { $_.LastWriteTime }

Write-Host "Dates modified:"
$lastWriteTimes