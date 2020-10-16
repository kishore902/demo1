#! /bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

sudo apt-get install ruby -y
sudo apt-get install wget -y

wget https://aws-codedeploy-us-west-1.s3.amazonaws.com/latest/install
chmod +x ./install

sudo ./install auto

sudo service codedeploy-agent start
sudo service codedeploy-agent status

rm ./install
