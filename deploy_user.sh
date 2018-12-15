#!/bin/bash

useradd -m deploy

passwd deploy

mkdir /opt/train-schedule
chown deploy:deploy /opt/train-schedule

echo "deploy ALL=(ALL) NOPASSWD: /usr/bin/systemctl stop train-schedule" >> /etc/sudoers.d/deploy
echo "deploy ALL=(ALL) NOPASSWD: /usr/bin/systemctl start train-schedule" >> /etc/sudoers.d/deploy



