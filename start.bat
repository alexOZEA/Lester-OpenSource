@echo off

color E
echo [Lester] Installation/mise a jour des dependances en cours. Veuillez patienter..
call npm install >NUL
call npm install npm@latest -g
call npm outdated -g --depth=0npm update -g
call npm update -g

echo.
color 2
echo [Lester] Installation/mise a jour reussie avec succes

if NOT ["%errorlevel%"]==["0"] (
  pause
  exit /b %errorlevel%
)

echo.
color E
echo [Lester] Lancement du bot..
echo.

call node index.js

if NOT ["%errorlevel%"]==["0"] (
  pause
  exit /b %errorlevel%
)