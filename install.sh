#!/bin/bash
apt update
apt install git -y
mkdir /root/V2Board
chmod 775 /root/V2Board
cd /root/V2Board
git clone https://github.com/v2board/v2board-docker.git
cd v2board-docker/
git submodule update --init
echo '  branch = master' >> .gitmodules
git submodule update --remote
#运行
wget https://nginx-chlgo.run.goorm.io/d/shell/docker-compose.yaml
chmod 777 docker-compose.yaml
