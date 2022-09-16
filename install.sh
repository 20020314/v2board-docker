#!/bin/bash
apt update
apt install git -y
mkdir /root/V2Board
chmod 775 /root/V2Board
cd /root/V2Board
git clone https://github.com/20020314/v2board-docker.git
cd v2board-docker/
git submodule update --init
echo '  branch = master' >> .gitmodules
git submodule update --remote
#运行
