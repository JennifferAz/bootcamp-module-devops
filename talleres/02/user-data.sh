#!/bin/bash -xe

sudo yum install -y python37
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
sudo yum update -y
sudo yum install git -y
git clone https://github.com/JennifferAz/bootcamp-module-devops.git
cd bootcamp-module-devops/
cd backend/
pip3 install -r requirements.txt
gunicorn -w 3 -b 0.0.0.0:8000 app:app