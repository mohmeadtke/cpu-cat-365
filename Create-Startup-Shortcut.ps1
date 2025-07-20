$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$([Environment]::GetFolderPath('Startup'))\RunCat365.lnk")
$Shortcut.TargetPath = "c:\some randome repo\RunCat365\Published\RunCat 365.exe"
$Shortcut.WorkingDirectory = "c:\some randome repo\RunCat365\Published"
$Shortcut.Description = "RunCat365 - Cute cat animation in system tray"
$Shortcut.Save()
Write-Host "Startup shortcut created successfully!"
Write-Host "RunCat365 will now start automatically when Windows starts."
