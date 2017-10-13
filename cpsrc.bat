@echo off

set svnRoot=E:\game

set srcPath=%svnRoot%\hanguo\src\com
set desPath=%svnRoot%\krSrc\com

::if not exist %desPath%\%1 md %desPath%\%1

xcopy /y /e %srcPath% %desPath%
set err=%errorlevel%
if %err%==1 echo %desPath% Failed
if %err%==0 echo %desPath% Copied


TortoiseProc.exe /command:commit /path:"%desPath%" /logmsg:"[kr] code merged form taiwan version"
pause
