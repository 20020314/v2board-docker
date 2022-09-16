## 最低要求2核4G
## 修改'caddy.conf'
#### 第一行'http://你的域名 {'
#### Docker安装v2board
```shell
bash <(curl -Ls https://raw.githubusercontent.com/20020314/v2board-docker/master/docker.sh)
```
```shell
bash <(curl -Ls https://raw.githubusercontent.com/20020314/v2board-docker/master/install.sh)
```
```shell
cd /root/V2Board/v2board-docker
```
### 启动
```shell
dc up -d
```
### 进入容器
```shell
dc exec www bash
```
#### **容器内执行**
```shell
wget https://getcomposer.org/download/1.9.0/composer.phar
```
```shell
php composer.phar global require hirak/prestissimo
```
```shell
php -d memory_limit=-1 composer.phar install
```
```shell
php artisan v2board:install
```
#### **启动horizon**
```shell
dc exec www bash
```
```shell
php artisan horizon &
```
#### **升级**
```shell
dc exec www bash
```
```shell
sh update.sh
```
```shell
php artisan horizon &
```


