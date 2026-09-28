If `IAS.cmd` is intended as a Windows command script for your TSplus-related repository, you can use a simple, legitimate administration script like this:

```
@echo off
setlocal

title TSplus Enterprise Edition - IAS Utility

echo ==========================================
echo   TSplus Enterprise Edition
echo   IAS Administration Utility
echo ==========================================
echo.

echo [1] Checking Windows environment...
echo Computer: %COMPUTERNAME%
echo User:     %USERNAME%
echo.

echo [2] Checking network configuration...
ipconfig | findstr /I "IPv4 IPv6"

echo.
echo [3] Checking required Windows services...
sc query TermService

echo.
echo ==========================================
echo   Check completed.
echo ==========================================

pause
endlocal
```
