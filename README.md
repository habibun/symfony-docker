# A docker skeleton for Symfony 4 project

##commands

**create .env file**
```
cp .env.dist .env
```

### Docker-compose
**Build or rebuild services**
```
docker-compose build
```
**Create and start containers**
```
docker-compose up -d
```
**Stop containers**
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

**system host file (add symfony.local)**
```bash
$ sudo echo $(docker network inspect bridge | grep Gateway | grep -o -E '[0-9\.]+') "symfony.local" >> /etc/hosts
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





