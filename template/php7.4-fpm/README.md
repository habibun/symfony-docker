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

