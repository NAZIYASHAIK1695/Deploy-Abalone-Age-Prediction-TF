#!/bin/bash
sudo yum update -y
sudo yum install git -y
sudo amazon-linux-extras install nginx1 -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx
sudo rm -r /etc/nginx/nginx.conf
git clone https://github.com/amar-m-cloud/Abalone-Age-Prediction.git
cd Abalone-Age-Prediction
sudo cp -r nginx.conf /etc/nginx/
sudo systemctl restart nginx
pip3 install -r requirements.txt
screen -m -d python3 app.py
