IF "%PROCESSOR_ARCHITEW6432%"=="" GOTO native
%SystemRoot%\Sysnative\cmd.exe /c %0 %* Exit
:native

SET FILECALLPATH=%~dp0
SET AppName=Welcome-Page
SET VERSION=1.8
SET GUID={42e93ea8-f1c2-4c89-8f99-1c368e818d7f}
SET InstallPath=%PROGRAMFILES%\20Road\Welcome-Page

REM Setup app info
if exist "%InstallPath%" rmdir /s /q "%InstallPath%"

IF EXIST "C:\Users\Public\Desktop\Welcome.url" del /q "C:\Users\Public\Desktop\Welcome.url"
IF EXIST "C:\Users\Public\Public Desktop\Welcome.url" del /q "C:\Users\Public\Public Desktop\Welcome.url"
IF EXIST "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Welcome.url" del /q "%ProgramData%\Microsoft\Windows\Start Menu\Programs\Welcome.url"

reg delete "HKLM\SOFTWARE\Microsoft\Active Setup\Installed Components\%GUID%" /f
reg delete  "HKLM\Software\20Road\%AppName%" /f