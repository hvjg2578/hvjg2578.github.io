@echo off
title ϵͳװ��ȫ�ܹ�����
:loop
cls
echo.    
echo. %1
echo.                             ��ǰ����汾��v%toolboxlate%  
echo.              
echo.
echo.
echo.                              1.����Windows��Office
echo.                              2.
echo.                              3.
echo.                              4.
echo.                              5.
echo.                              6.
echo.                              7.
echo.                              8.������־�����ڼ����ⷴ��
echo.                              9.��������
choice /c 123456789U /n /m "��ѡ��: "
if %errorlevel%==1 goto act
if %errorlevel%==2 goto windows
if %errorlevel%==3 goto setupo
if %errorlevel%==4 goto set
if %errorlevel%==5 goto checkkms
if %errorlevel%==6 goto checkact
if %errorlevel%==7 goto inf
if %errorlevel%==8 goto bugreport
if %errorlevel%==9 goto ml
if %errorlevel%==10 start http://hvjg2578.github.io/Windowsȫ�汾�����v19.3.exe
goto :loop
:act
cls
echo.    
echo.
echo.
echo.     ���Ժ󣬳����������������ļ�
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
