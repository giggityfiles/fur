@echo off
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
exit
