::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IlNpu3j6oo=
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IlOuLmt97zT7FUQWII=
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IlOuLmt97LR7FUQWII=
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IlOuLmi97zT7FUQWII=
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IlOuLmi97LR7FUQWII=
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0Ike7e/y4aSFo1l9
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0Ike5+fv5uSUtgMYTOdf
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0Ike5+fv/e+UtgMYTOdf
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0Ik/7frv5uyOoUwJUawnaoKW16fu
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0Ikf/fr3oe+fpy0=
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0Ika6f7y7OWJ7EQeW4I=
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IkR6eH1oeiGti0=
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IkP7fzu/6SCukh9
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IkP4Ofs6/iOtEhTUfo6GA==
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IkK7fq17euTwg==
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IkK5OX4/KSCukh9
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IkLv+T//Yo=
::fBE1pAF6MU+EWH3eyMTL/J2inIxf8+9h0IkL7+3voe+fpy0=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJN9/IMTG+JOJg4BZ6le8B6MV6+f1oeOErS0=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF25
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF25
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJN9/IMTG+JOJg4BZ6leND7sY5//oag9PJaT10h7z/lA7XGBVpTfWb6AzY8d0mC8UndMJbA==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
color 3f
set my=19.5
set fwq=kms.lotro.cc
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
echo 正在检查网络状态
echo.
echo.
vlmcs %fwq% -l Windows | find "successful"  > NUL &&  goto sermain
:fail
cls
echo.
echo.
echo.
echo.网络连接失败，请检查您的网络连接。
echo. 1.仍然进入主页
echo. 2.退出程序
choice /c 12 /n /m "请选择: "
if %errorlevel%==1 call main.bat
if %errorlevel%==2 exit
goto fail
call main.bat 
:sermain
del ver.bat
cls
echo.
echo.
echo.
echo 正在检查更新
echo.
echo.
wget -q http://hvjg2578.github.io/update/act/ver.bat
call ver.bat
cls
echo.
echo.
echo.
echo 正在更新主程序
echo.
echo.
del main2.bat
if %my% NEQ %servision% wget -q http://hvjg2578.github.io/update/act/main.bat && cls && echo. && echo. && echo. && echo.正在更新主程序 && set my=%servision%
call main2.bat
