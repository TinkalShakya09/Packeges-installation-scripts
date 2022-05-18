#!/usr/bash

yum install wget -y
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
yum install -y jenkins java-11-openjdk-devel
systemctl start jenkins
systemctl enable jenkins
