#!/bin/sh
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-nightly
 sudo yum-config-manager --enable docker-ce-test
 sudo yum-config-manager --disable docker-ce-nightly
 sudo yum install docker-ce docker-ce-cli containerd.io
sudo yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io
sudo systemctl start docker
sudo systemctl enable docker