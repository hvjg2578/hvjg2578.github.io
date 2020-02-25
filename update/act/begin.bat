
@echo off
color 3f
set my=18.7
@title Windows全版本激活工具-软件启动前准备
cls
echo.
echo.
echo.
echo 正在同步系统时间
echo.
::net stop w32time >nul
::w32tm /unregister >nul
w32tm /register >nul
net start w32time >nul
w32tm /config /manualpeerlist:"ntp1.aliyun.com" /syncfromflags:manual /reliable:yes /update >nul
w32tm /resync >nul
@title Windows全版本激活工具-检查更新
cls
echo.
echo.
echo.
echo 正在检查更新服务器状态
echo.
curl  -o /dev/null -s -w %%{http_code}  -k -L  hvjg2578.ticp.io --connect-timeout 3  | find "200"  > NUL &&  goto ser1
curl  -o /dev/null -s -w %%{http_code}  -k -L  hvjg2578.yicp.top --connect-timeout 3  | find "200"  > NUL &&  goto ser2
curl  -o /dev/null -s -w %%{http_code}  -k -L  hvjg2578.free.idcfengye.com --connect-timeout 5  | find "200"  > NUL &&  goto ser3
call main.bat 
:ser1
curl -s -O http://hvjg2578.ticp.io/update/act/ver.bat
call ver.bat
if %my% NEQ %servision% curl -s -O http://hvjg2578.ticp.io/update/act/main.bat && cls && echo. && echo. && echo. && echo.正在下载更新 && set my=%servision%
call main.bat
:ser2
curl -s -O http://hvjg2578.yicp.top/update/act/ver.bat
call ver.bat
if %my% NEQ %servision% curl -s -O http://hvjg2578.yicp.top/update/act/main.bat && cls && echo. && echo. && echo. && echo.正在下载更新 && set my=%servision%
call main.bat
:ser3
curl -s -O http://hvjg2578.free.idcfengye.com/update/act/ver.bat
call ver.bat
if %my% NEQ %servision% curl -s -O http://hvjg2578.free.idcfengye.com/update/act/main.bat && cls && echo. && echo. && echo. && echo.正在下载更新 && set my=%servision%
call main.bat
