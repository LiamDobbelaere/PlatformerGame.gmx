@echo off
set sessionid=42819
set gamename=PlatformerGame

set runner="C:\Users\Tom Dobbelaere\AppData\Roaming\GameMaker-Studio\Runner.exe" -game
set target=C:\Users\Tom Dobbelaere\AppData\Local\gm_ttt_%sessionid%\
echo %target%
cd /D %target%
FOR /F "delims=" %%i IN ('dir gm* /b /ad-h /t:c /od') DO SET a=%%i
%runner% %a%\%gamename%.win
exit