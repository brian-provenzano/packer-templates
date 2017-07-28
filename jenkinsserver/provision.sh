#!/bin/bash
set -e
# TODO - put all of this in a proper CM tool like ansible... ugh :(
# install jenkins
sudo yum update -y
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo yum install java-1.8.0-openjdk -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
# some useful tools
sudo yum install telnet -y
sudo yum install bind-utils -y
sudo yum install nano -y
curl -o - https://bootstrap.pypa.io/get-pip.py | sudo python
sudo pip install awscli 
#setup timezone
sudo timedatectl set-timezone America/Los_Angeles
#set hostname...
# use ec2 plugin on jenkins instead??
#provision a jenkins user for executing jobs (remotely)
#sudo usermod -s /bin/bash jenkins
#echo jenkins:~pigsfly | sudo chpasswd
#sudo -i su -c "ssh-keygen -b 2048 -t rsa -f /var/lib/jenkins/.ssh/id_rsa -q -N \"\"" -m "jenkins"
#sudo cat /var/lib/jenkins/.ssh/id_rsa.pub >> /home/ec2-user/.ssh/authorized_keys



