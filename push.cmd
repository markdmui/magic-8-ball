@echo off
rem Double-click after editing answers.txt: saves the change to GitHub, live in about a minute.
cd /d "%~dp0"
git add answers.txt
git commit -q -m "Answers updated"
git push -q
if errorlevel 1 (echo Push failed. & pause) else (echo Done. Live in about a minute. & timeout /t 3 >nul)
