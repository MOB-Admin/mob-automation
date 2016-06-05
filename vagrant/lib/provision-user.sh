#!/bin/bash

# Create user
groupadd dmitry
useradd -g dmitry -m -d /home/dmitry -c "Dmitry Vl. Rendov" -s /bin/bash dmitry

# Add private key and git config
mkdir /home/dmitry/.ssh
chmod 700 /home/dmitry/.ssh

cat /vagrant/ssh/id_rsa_mobadmin.pub >> /home/dmitry/.ssh/authorized_keys
cat /vagrant/ssh/config > /home/dmitry/.ssh/config
chmod 640 /home/dmitry/.ssh/*

cat /vagrant/ssh/gitconfig > /home/dmitry/.gitconfig
chmod 640 /home/dmitry/.gitconfig

cat /vagrant/ssh/id_rsa_dmitry_rendov.pem > /home/dmitry/.ssh/id_rsa_dmitry_rendov.pem
cat /vagrant/ssh/id_rsa_mobadmin.pem > /home/dmitry/.ssh/id_rsa
chmod 400 /home/dmitry/.ssh/id_rsa*

chown -R dmitry:dmitry /home/dmitry/.ssh
chown dmitry:dmitry /home/dmitry/.gitconfig
