#! /bin/bash

echo "Installing system dependencies..."
sudo apt-get install -y libffi-dev

echo "Installing python packages..."

sudo -H pip install virtualenvwrapper
source /usr/local/bin/virtualenvwrapper.sh
mkvirtualenv chamanti_ocr -p /usr/bin/python3.5
workon chamanti_ocr

pip install --upgrade pip
pip install -r requirements.txt
