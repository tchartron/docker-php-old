## Docker starter  

Docker environment for php web application  
php7.4-fpm  
mariadb latest  
nginx alpine stable  
redis latest  

### Usage
```
git clone git@github.com:tchartron/docker-php.git
cd docker-php
cp -a .docker ../myproject/.docker
cp .docker/docker-compose.example ../myproject/docker-compose.example
cd ../myproject
cp .docker/.env.example .docker/.env
Edit hostname, mysql passwords, db name, .. 
Edit /etc/hosts
cp docker-compose.example docker-compose.yml
Edit docker-compose.yml to change container names, ports if you want, volumes names for mariadb and redis, ...
docker-compose up
```

### Php Modules  
```
docker-compose exec php php -m
[PHP Modules]
bcmath
Core
ctype
curl
date
dom
fileinfo
filter
ftp
gd
hash
iconv
intl
json
libxml
mbstring
mysqlnd
openssl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
redis
Reflection
session
SimpleXML
sodium
SPL
sqlite3
standard
tokenizer
xml
xmlreader
xmlwriter
zip
zlib

[Zend Modules]
```
