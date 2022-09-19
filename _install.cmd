IF "%PROCESSOR_ARCHITEW6432%"=="" GOTO native
%SystemRoot%\Sysnative\cmd.exe /c %0 %* Exit
:native

SET FILECALLPATH=%~dp0

SET AppName=Welcome-Page
SET VERSION=1.8
SET GUID={42e93ea8-f1c2-4c89-8f99-1c368e818d7f}
SET InstallPath=%PROGRAMFILES%\20Road\Welcome-Page

mkdir "%InstallPath%"
xcopy /i /e /h /c /y "%FILECALLPATH%source" "%InstallPath%"
IF EXIST "C:\Users\Public\Desktop" copy /y "%FILECALLPATH%Welcome.url" "C:\Users\Public\Desktop\Welcome.url"
IF EXIST "C:\Users\Public\Public Desktop" copy /y "%FILECALLPATH%Welcome.url" "C:\Users\Public\Public Desktop\Welcome.url"
copy /y "%FILECALLPATH%Welcome.url" "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Welcome.url"

regedit /s "%FILECALLPATH%activesetup.reg"

REM Setup app info
reg add "HKLM\Software\20Road\%AppName%" /v Version /d "%Version%" /t REG_SZ /f
reg add "HKLM\Software\20Road\%AppName%" /v ActiveSetupGuid /d "%GUID%" /t REG_SZ /f