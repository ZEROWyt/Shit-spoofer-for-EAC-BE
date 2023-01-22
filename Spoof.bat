echo off
title Panama Spoofer
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
)

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
:--------------------------------------  


cd "C:\Windows\Temp\osl"

echo off
AMIDEWINx64.EXE /SU AUTO 
AMIDEWINx64.EXE /BS  %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CS  %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SS  %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /PSN %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SU %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SM %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SP %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SV %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SF %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /BT %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /BLC %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CM %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CV %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CS %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CA %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CSK %random%%random%%random%%random%%random%%random%

AMIDEWINx64.EXE /IVN %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /IV %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /IV %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SM %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SP %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SV %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SS %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SU AUTO
AMIDEWINx64.EXE /SK %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /SF %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /BM %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /BP %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /BV %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /BS %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /BT %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /BLC %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CM %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CV %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CS %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CA %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /CSK %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /PSN %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /PAT %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /PPN %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 1 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 2 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 3 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 4 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 5 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 6 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 7 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 8 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 9 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 10 %random%%random%%random%%random%%random%%random%
AMIDEWINx64.EXE /OS 11 %random%%random%%random%%random%%random%%random%



net stop winmgmt /y
net start winmgmt /y
sc stop winmgmt
sc start winmgmt


 SETLOCAL ENABLEDELAYEDEXPANSION
 SETLOCAL ENABLEEXTENSIONS

 FOR /F "tokens=1" %%a IN ('wmic nic where physicaladapter^=true get deviceid ^| findstr [0-9]') DO (
 CALL :MAC
 FOR %%b IN (0 00 000) DO (
 REG QUERY HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\%%b%%a >NUL 2>NUL && REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\%%b%%a /v NetworkAddress /t REG_SZ /d !MAC!  /f >NUL 2>NUL
 )
 )

 ::Disable power saving mode for network adapters
 FOR /F "tokens=1" %%a IN ('wmic nic where physicaladapter^=true get deviceid ^| findstr [0-9]') DO (
 FOR %%b IN (0 00 000) DO (
 REG QUERY HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\%%b%%a >NUL 2>NUL && REG ADD HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Class\{4D36E972-E325-11CE-BFC1-08002bE10318}\%%b%%a /v PnPCapabilities /t REG_DWORD /d 24 /f >NUL 2>NUL
 )
 )

 ::Reset NIC adapters so the new MAC address is implemented and the power saving mode is disabled.
 FOR /F "tokens=2 delims=, skip=2" %%a IN ('"wmic nic where (netconnectionid like '%%') get netconnectionid,netconnectionstatus /format:csv"') DO (
 netsh interface set interface name="%%a" disable >NUL 2>NUL
 netsh interface set interface name="%%a" enable >NUL 2>NUL
 )

 GOTO :EOF
 :MAC
 ::Generates semi-random value of a length according to the "if !COUNT!"  line, minus one, and from the characters in the GEN variable
 SET COUNT=0
 SET GEN=ABCDEF0123456789
 SET GEN2=26AE
 SET MAC=
 :MACLOOP
 SET /a COUNT+=1
 SET RND=%random%
 ::%%n, where the value of n is the number of characters in the GEN variable minus one.  So if you have 15 characters in GEN, set the number as 14
 SET /A RND=RND%%16
 SET RNDGEN=!GEN:~%RND%,1!
 SET /A RND2=RND%%4
 SET RNDGEN2=!GEN2:~%RND2%,1!
 IF "!COUNT!"  EQU "2" (SET MAC=!MAC!!RNDGEN2!) ELSE (SET MAC=!MAC!!RNDGEN!)
 IF !COUNT!  LEQ 11 GOTO MACLOOP 