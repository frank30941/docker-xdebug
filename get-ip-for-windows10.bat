@echo off

SET mypath=%~dp0
FOR /F "tokens=4 delims= " %%i in ('route print ^| find " 0.0.0.0"') do set localIp=%%i

echo xdebug.remote_host=%localIp%>> .\php7-xdebug\xdebug.ini