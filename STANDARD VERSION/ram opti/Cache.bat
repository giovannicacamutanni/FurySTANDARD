@echo off
color 0a
chcp 65001

rem Vérifie si le script est exécuté en tant qu'administrateur
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Le script nécessite des droits administratifs. Redémarrage avec élévation de privilèges...
    powershell.exe -Command "Start-Process '%~0' -Verb RunAs"
    exit /b
)

CLS

title FURY TWEAKS

:Menu
CLS

title FURY TWEAKS


@echo -
@echo 
@echo.

@echo 1. Tuto
@echo 2. cache  RAM
@echo.

CHOICE /C 12 /M "Entre ton choix:"
IF ERRORLEVEL 2 GOTO cache 
IF ERRORLEVEL 1 GOTO Tuto


:Vider le cache de la RAM
CLS

title FURY TWEAKS

cd "C:\Program Files\Dossier - inso.vs\RAMMap"

RamMap.exe -Ew -AcceptEula
@timeout /t 2 /nobreak
RamMap.exe -Es -AcceptEula
@timeout /t 2 /nobreak
RamMap.exe -Em -AcceptEula
@timeout /t 2 /nobreak
RamMap.exe -Et -AcceptEula
@timeout /t 2 /nobreak
RamMap.exe -E0 -AcceptEula

echo.
echo La RAM est maintenant nettoyé !
pause
GOTO Quitter


GOTO Quitter

:Quitter

echo.