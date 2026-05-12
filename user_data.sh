#!/bin/bash
### 1. Updates and installs modified packagees
yum update -y
yum install -y python3 pip git

### 2. User directory setup
cd /home/ec2-user

### 3. Clone forked repository
git clone https://github.com/GodEmperorKing/2025dec22.git
cd 2025dec22

### 4. Install "Flask" 
pip3 install flask

### 5. Run the application in the background
### Implement "nohup" 
### Redirect output to log files 
nohup python3 app.py > /home/ec2-user/deployment.log 2>&1 &
