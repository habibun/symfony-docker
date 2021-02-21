# A docker skeleton for Symfony project with php-fpm, nginx and mysql (tested in linux platform with symfony 4 and symfony 5)

## Usage Instruction
step 1: Copy .env.dist file content to .env file

step 2: Copy **docker** folder in your project root

step 3: copy **docker-compose.yml** file in your project root

step 4: Build and run the containers
`docker-compose up -d --build`

step 5: Update system host file (add symfony.local) [optional]
```
sudo bash -c 'echo $(docker inspect -f "{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}" my_web_container_name/id) "symfony.local" >> /etc/hosts'
```

step 6: visit [symfony.local](http://symfony.local) [optional]

### access container through bash
**php-fpm**: `docker-compose exec php bash`  
**mysql**: `docker-compose exec mysql bash`  
**nginx**: `docker-compose exec nginx bash` 
**phpmyadmin**: `docker-compose exec phpmyadmin bash` 
**encore**: `docker-compose exec encore bash` 

**symfony console** `docker-compose exec php-fpm php bin/console your_command`  
**mysql db login** `docker-compose exec mysql mysql -uroot -p"root"` 

## How it works?
Have a look at the `docker-compose.yml` file, here are the `docker-compose` built images:

* `mysql`: This is the MySQL database container
* `php-fpm`: This is the PHP-FPM container
* `nginx`: This is the Nginx webserver container
* `phpmyadmin`: This is the phpmyadmin container
* `encore`: This is the encore container in which

## docker-compose useful tool commands

# docker
`docker system prune`

`docker login`

### container
`docker ps` 

`docker ps -a` 

`docker start container_id/container_name`

`docker attach container_id/container_name`

`docker start container_id/container_name`

`docker rm 30fa container_id/container_name`

`docker logs container_id/container_name`

`docker inspect container_id/container_name`

`docker restart container_name/container_id`

### image
`docker image ls`

`docker run repository_name/image_id`

`docker rmi repository_name/image_id`

`docker tag mycurl username/repository_name:version`

`docker push username/repository_name:version`

### docker-compose
`docker-compose build`

`docker-compose up`

`docker-compose up container_name/container_id`

`docker-compose up -d`

`docker-compose up --build`

`docker-compose rm`

`docker-compose down`

### volume
`docker volume ls`

`docker volume rm volume_name`

`docker volume create --name volume_name`

###network
`docker network ls`

`docker network prune`

`docker inspect container_name/container_id`

`docker network create network_name`

`docker run --rm -d --name web-server --network network_name image_name`

**project cmd**
* `docker run -it ubuntu /bin/bash`
* `docker run -it -d --rm --name ubuntu ubuntu /bin/bash`
* `docker run --rm -v ${PWD}:/myvol ubuntu /bin/bash -c "ls -lha > /myvol/myfile.txt"`
* `docker run --rm klutchell/rar"`
* `docker run --rm -v ${PWD}:/files klutchell/rar a /files/myrar.rar /files/myfile.txt`
* `docker run --rm -v ${PWD}:/files -w /files klutchell/rar a myrar.rar myfile.txt`
* `docker run -it --rm --name my-running-script php:7.2-cli /bin/bash`
* `docker run -it -v ${PWD}:/myfiles --name my-running-script php:7.2-cli /bin/bash`
* `docker run -d httpd`
* `docker exec -it c7467ffffbb0`
* `docker logs c7467ffffbb0`
* `docker logs -f c7467ffffbb0`
* `docker run -d -p 8080:80 httpd`
* `docker run -d -p 8080:80 -v ${PWD}:/var/www/html php:7.2-apache`
* `docker build -t myphpapp .`
* `docker run -p 8080:80 phpapp:web`

**argument description**
* `-d` running in the background
* `--rm` remove container
* `--name` name of the container
* `-v`  mount volume
* `-d`  detach mode
* `-w`  working directory
* `-p`  port binding
* `-t`  tagging
