@echo off
REM This will check if Python is installed
where python > nul 2> nul
IF %ERRORLEVEL% NEQ 0 (
    echo Python3 is not installed. Please install Python from https://www.python.org/downloads/.
    exit /b 1
)

REM Install required dependencies
echo Installing dependencies...
echo No dependencies.

REM Clone the repository if it doesn't exist
IF NOT EXIST "ModListGenerator" (
    echo Cloning ModListGenerator repository...
    git clone https://github.com/TRC-Loop/ModListGenerator.git
) ELSE (
    REM If repo exists, pull the latest changes
    echo Updating ModListGenerator repository...
    cd ModListGenerator
    git pull origin main
    cd ..
)

REM Add modlistgen to PATH
echo Creating modlistgen command...
setx PATH "%PATH%;%cd%\ModListGenerator\src"

echo Installation complete! You can now use modlistgen in your terminal.
