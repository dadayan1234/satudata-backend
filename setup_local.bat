@echo off
echo Starting setup... > setup_log.txt
python --version >> setup_log.txt 2>&1
if %errorlevel% neq 0 (
    echo Python not found! >> setup_log.txt
    exit /b 1
)

echo Creating virtual environment... >> setup_log.txt
python -m venv env >> setup_log.txt 2>&1
if %errorlevel% neq 0 (
    echo Failed to create venv >> setup_log.txt
    exit /b 1
)

echo Activating venv and installing requirements... >> setup_log.txt
call env\Scripts\activate.bat
pip install -r requirements.txt >> setup_log.txt 2>&1

echo Setup complete. >> setup_log.txt
