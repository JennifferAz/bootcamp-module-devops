#!/bin/bash -xe

Install python y pip
sudo yum update -y
sudo yum install -y python37
sudo yum install git -y
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py
cd ~
git clone https://github.com/JennifferAz/bootcamp-module-devops.git
cd bootcamp-module-devops/backend/
pip3 install -r requirements.txt
gunicorn -w 3 -b 0.0.0.0:8000 app:app