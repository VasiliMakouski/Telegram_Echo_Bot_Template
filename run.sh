#!/bin/bash

if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi
source venv/bin/activate


if [ ! -f "requirements.txt" ]; then
    echo "requirements.txt not found, exiting..."
    exit 1
fi
echo "Installing required packages..."
pip install -r requirements.txt

echo "Starting the bot..."
python telebot.py
