@echo off
rem Uruchamia generator lokalnie (wymaga Pythona) i otwiera go w przegladarce.
cd /d "%~dp0"
start "" http://localhost:8080/
python -m http.server 8080
