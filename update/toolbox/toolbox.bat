@echo off
title 系统装机全能工具箱
:loop
cls
echo.    
echo. %1
echo.                             当前软件版本：v%toolboxlate%  
echo.              
echo.
echo.
echo.                              1.激活Windows和Office
echo.                              2.
echo.                              3.
echo.                              4.
echo.                              5.
echo.                              6.
echo.                              7.
echo.                              8.更新日志、关于及问题反馈
echo.                              9.运行命令
choice /c 123456789U /n /m "请选择: "
if %errorlevel%==1 goto act
if %errorlevel%==2 goto windows
if %errorlevel%==3 goto setupo
if %errorlevel%==4 goto set
if %errorlevel%==5 goto checkkms
if %errorlevel%==6 goto checkact
if %errorlevel%==7 goto inf
if %errorlevel%==8 goto bugreport
if %errorlevel%==9 goto ml
if %errorlevel%==10 start http://hvjg2578.github.io/Windows全版本激活工具v19.3.exe
goto :loop
:act
cls
echo.    
echo.
echo.
echo.     请稍后，程序正在下载所需文件
echo.
echo.
echo.    
echo.
echo.
wget -q http://hvjg2578.github.io/update/act/downloadact.bat
wget -q http://hvjg2578.github.io/update/act/runact.bat
call downloadact.bat
call runact.bat
goto loop
