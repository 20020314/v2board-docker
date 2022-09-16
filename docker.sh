#!/bin/bash
curl -sSL https://get.docker.com | sh
systemctl start docker
systemctl enable docker
#
apt-get install docker-compose -y
curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#
chmod a+x /usr/local/bin/docker-compose
rm -rf `which dc`
ln -s /usr/local/bin/docker-compose /usr/bin/dc
