# A docker skeleton for Symfony 4 project

Add project name in env file
```
PROJECT_NAME=symfony-docker
```

Update system host file (add symfony.local)
```
sudo bash -c 'echo $(docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" symfony-docker-nginx) "symfony.local" >> /etc/hosts'
```

## docker-compose tool commands

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





