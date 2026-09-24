@echo off
echo ========================================================
echo AQX Logistics - GitHub High-DA Authority Hub Pusher
echo ========================================================
echo.
echo Make sure you have created an empty public repository on GitHub!
echo Example: https://github.com/your-username/us-freight-forwarding-guide
echo.
set /p REPO_URL="Enter your GitHub Repository URL: "
if "%REPO_URL%"=="" goto end

git init
git add .
git commit -m "feat: Initial release of USA to Worldwide Freight Forwarding Guide 2026"
git branch -M main
git remote remove origin 2>nul
git remote add origin %REPO_URL%
git push -u origin main

echo.
echo ========================================================
echo SUCCESS! Your authoritative repository is now published!
echo ========================================================
:end
pause
