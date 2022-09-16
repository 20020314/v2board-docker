#### Docker安装v2board

`bash <(curl -Ls https://raw.githubusercontent.com/20020314/v2board-docker/master/docker.sh)`

`bash <(curl -Ls https://raw.githubusercontent.com/20020314/v2board-docker/master/install.sh)`

`dc up -d`

`dc exec www bash`
#### **容器内执行**
`wget https://getcomposer.org/download/1.9.0/composer.phar`
`php composer.phar global require hirak/prestissimo`
`php -d memory_limit=-1 composer.phar install`
`php artisan v2board:install`
#### **启动horizon**
`dc exec www bash`
`php artisan horizon &`
#### **升级**
`dc exec www bash`
`sh update.sh`
`php artisan horizon &`
### **数据库自备**

