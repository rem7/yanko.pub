#!/bin/bash

sudo adduser --disabled-password --gecos "" -q yanko
sudo usermod -a -G admin yanko
sudo mkdir ~yanko/.ssh
sudo bash -c 'curl https://yanko.pub > ~yanko/.ssh/authorized_keys'
sudo chmod 755 ~yanko/.ssh
sudo chmod 755 ~yanko/.ssh/authorized_keys
sudo chown yanko:yanko ~yanko/.ssh
sudo chown yanko:yanko ~yanko/.ssh/authorized_keys
sudo bash -c 'echo "%admin ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/91-admin'
