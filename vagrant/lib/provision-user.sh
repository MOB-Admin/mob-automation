#!/bin/bash

# Create user
groupadd dmitry
useradd -g dmitry -m -d /home/dmitry -c "Dmitry Vl. Rendov" -s /bin/bash dmitry

# Add private key and git config
mkdir /home/dmitry/.ssh
chmod 700 /home/dmitry/.ssh

echo /vagrant/ssh/id_rsa_dmitry_rendov.pub >> /home/dmitry/.ssh/authorized_keys
chmod 640 /home/dmitry/.ssh/authorized_keys

cat /vagrant/ssh/id_rsa_dmitry_rendov.pem > /home/dmitry/.ssh/id_rsa
chmod 400 /home/dmitry/.ssh/id_rsa

cat /vagrant/ssh/config > /home/dmitry/.ssh/config
chmod 640 /home/dmitry/.ssh/config

chown -R dmitry:dmitry /home/dmitry/.ssh
