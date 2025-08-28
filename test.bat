@echo off
rem apply_wallpaper.bat - downloads wallpaper, sets stretch, optionally hides icons
set "DEST=%%USERPROFILE%%\Pictures\wallpaper.bmp"
if not exist "%%~dp0" mkdir "%%~dp0" >nul 2^>^&1
Downloading wallpaper to "%%DEST%%"...
powershell -Command "Try { Invoke-WebRequest -Uri 'https://giggityfiles.github.io/wallpaper.bmp' -OutFile '%%DEST%%' -UseBasicParsing } Catch { exit 1 }" 
if errorlevel 1 (
  Failed to download. Exiting.
  pause
  exit /b 1
)
rem Set wallpaper registry values for Stretch
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%%DEST%%" /f
reg add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
reg add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f
rem Apply the wallpaper change
rundll32.exe user32.dll,UpdatePerUserSystemParameters 1, True
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideIcons /t REG_DWORD /d 1 /f
