@echo off
where python
if %errorlevel% neq 0 (
    echo Python is not installed on this computer. Please install Python and run this script again.
    pause
    exit /b
)

pip show virtualenv
if %errorlevel% neq 0 (
    echo virtualenv is not installed on this computer. Installing virtualenv...
    pip install virtualenv
)

virtualenv venv
call venv\Scripts\activate
pip install -r requirements.txt

python telebot.py

call venv\Scripts\deactivate

pause