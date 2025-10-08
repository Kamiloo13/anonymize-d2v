@echo off

start "Python Demo2Video" cmd /K "cd /d Demo2Video && python main.py"

start "Node cs-demo-manager" cmd /K "cd /d cs-demo-manager && node scripts\develop-cli.mjs"

cd /d OpenHud
start "" OpenHud.exe

cd ..

@REM Swap to local OBS installation path
cd /d obs-studio\bin\64bit 
start "" obs64.exe
