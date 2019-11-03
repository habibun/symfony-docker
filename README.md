# A docker skeleton for Symfony 4 project with nginx and mysql (tested linux platform only)

## Installation

step 1: download symfony from official site

step 2: **create .env.local file** and Update Environment Variable
```
cp .env.dist .env.local
```

step 2: copy **docker** folder and **docker-compose.yml** file in your project root

step 3:  Build the docker images
`docker-compose build`

step 4: Run the containers
`docker-compose up -d`

step 5: Update system host file (add symfony.local)
```
sudo bash -c 'echo $(docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" symfony-docker-nginx) "symfony.local" >> /etc/hosts'
```

visit [symfony.local](http://symfony.local)

###access container through bash
**php-fpm**: `docker-compose exec php-fpm bash`
**mysql**: `docker-compose exec mysql bash`
**nginx**: `docker-compose exec nginx bash`

### symfony console 
symfony console `docker-compose exec php-fpm php bin/console your_command`
mysql db login `docker-compose exec mysql mysql -uroot -p"root"`

## How it works?
Have a look at the `docker-compose.yml` file, here are the `docker-compose` built images:

* `mysql`: This is the MySQL database container
* `php-fpm`: This is the PHP-FPM container in which the application volume is mounted
* `nginx`: This is the Nginx webserver container in which application volume is mounted too


## docker-compose useful tool commands

**Build or rebuild services**
```
docker-compose build
```
**Create and start containers**
```
docker-compose up -d
```
**Stop running containers**
```
docker-compose down
```

### Mysql
**Mysql shell access**
```
docker-compose exec mysql bash
```

**Mysql logs**
```
docker logs dsp_mysql_1
```
**Connect using mysql client**

host: 127.0.0.1

port: 3308

### PHP
**Php shell access**
```
docker-compose exec php bash
```

### Docker 
**Show all containers**
```
docker ps --all
```

**Show all running containers**
```
docker ps
```
**login into container with**
```
docker exec -it <container> bash
```

**ip address**
```
docker inspect <container> | grep IPAddress
```

**stop all containers**
```
docker kill $(docker ps -q)
```

**remove all containers**
```
docker rm $(docker ps -a -q)
```

**remove specific container**
```
docker rm <container_id>
```

**remove all docker images**
```
docker rmi $(docker images -q)
```

**remove all docker volumes**
```
docker volume ls -qf dangling=true | xargs -r docker volume rm
```

**Remove docker0 bridge**
```
ip link del docker0
```





