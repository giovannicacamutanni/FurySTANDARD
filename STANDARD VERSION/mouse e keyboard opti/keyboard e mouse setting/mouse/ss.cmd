@echo off
:: ======================================
::   MOUSE OPTIMIZATION TOOLBOX
:: ======================================
title Mouse Optimization Toolbox
color 0A

:MENU
cls
echo =====================================
echo     MOUSE OPTIMIZATION TOOLBOX
echo =====================================
echo [1] Applica 1 - Mouse Optimization
echo [2] Applica 2 - Mouse Optimization
echo [3] Applica 3 - Mouse Optimization
echo [4] Applica 4 - Mouse Optimization
echo [5] Applica 5 - Mouse Optimization
echo [6] Applica 6 - Mouse Optimization
echo [7] Applica 7 - Mouse Optimization
echo [8] Applica 8 - Mouse Optimization
echo [9] Applica 9 - Mouse Optimization
echo [10] Applica 10 - Mouse Optimization
echo [0] ❌ Esci
echo =====================================
set /p scelta=Seleziona un'opzione: 

if "%scelta%"=="1" reg import "%~dp0\1 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="2" reg import "%~dp0\2 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="3" reg import "%~dp0\3 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="4" reg import "%~dp0\4 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="5" reg import "%~dp0\5 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="6" reg import "%~dp0\6 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="7" reg import "%~dp0\7 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="8" reg import "%~dp0\8 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="9" reg import "%~dp0\9 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="10" reg import "%~dp0\10 - Mouse Optimization.reg" & goto DONE
if "%scelta%"=="0" exit
goto MENU

:DONE
echo.
echo ✅ Ottimizzazione applicata con successo!
echo.
pause
goto MENU
