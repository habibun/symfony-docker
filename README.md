## About The Project

[Symfony][symfony_website] with [Docker][docker_website]  

Please check the [projects](#projects) section for more details.


## Overview
| Branch                             | Docker Version | Symfony Version | PHP Version     |
|------------------------------------|----------------|-----------------|-----------------|
| [twilio][twilio]                   | `20.x`         | `5.4`           | `8.0` or higher |
| [mnsami][mnsami]                   | `20.x`         | `5.4`           | `7.4` or higher |


## Projects
<details><summary>Get Started with Docker Compose and Symfony</summary>  

<img
src="xx"
alt="xx"
width="50%"
/>

**Code:** https://github.com/habibun/symfony-docker/tree/twilio  
**Resources:**
- [How to Get Started with Docker Compose and Symfony](https://www.twilio.com/blog/get-started-docker-symfony)

#### Prerequisites
- [Symfony CLI][symfony_cli], [PHP][php], [Composer][composer], [Git][git], [MySQL][mysql], [Node.js][node]

#### Installation

```bash 
# Clone the repository using the command
git clone git@github.com:habibun/symfony-docker.git

# Navigate into the cloned directory
cd symfony-docker

# Checkout to project branch
git checkout twilio

# Create .env.local file
make init
```

Configure the database connection in the .env.local file

```bash 
# Install project
make install

# Start the local development server
make start
```

Please check more rules in [Makefile][twilio_makefile].

##
</details>


<details><summary>Dockerized Symfony backend app with ReactJs for frontend with hotloading enabled</summary>  

<img
src="xx"
alt="xx"
width="50%"
/>

**Code:** https://github.com/habibun/symfony-docker/tree/mnsami  
**Resources:**
- [Setup a dockerized Symfony backend app with ReactJs for frontend with hotloading enabled](https://minasami.com/2021/06/23/part-1-setup-reactjs-symfony-app-with-hotloading.html)

#### Prerequisites
- [Symfony CLI][symfony_cli], [PHP][php], [Composer][composer], [Git][git], [MySQL][mysql], [Node.js][node]

#### Installation

```bash 
# Clone the repository using the command
git clone git@github.com:habibun/symfony-docker.git

# Navigate into the cloned directory
cd symfony-docker

# Checkout to project branch
git checkout mnsami

# Create .env.local file
make init
```

Configure the database connection in the .env.local file

```bash 
# Install project
make install

# Start the local development server
make start
```

Please check more rules in [Makefile][mnsami_makefile].

##
</details>

## Template
  - [php7.4-fpm](./template/php7.4-fpm)

## Learn More 
- [Docker Docs](https://docs.docker.com/)   
- [Introducing Docker support](https://symfony.com/blog/introducing-docker-support)
- [Using Docker with Symfony](https://symfony.com/doc/current/setup/docker.html)
- [Docker Integration](https://symfony.com/doc/current/setup/symfony_server.html#docker-integration)


## Related
- [Docker](https://github.com/habibun/docker)


## License
Distributed under the MIT License. See **[LICENSE][license]** for more information.


[//]: # (Links)
[license]: https://github.com/habibun/symfony-docker/blob/main/LICENSE
[symfony_website]: https://symfony.com/
[docker_website]: https://www.docker.com/


[twilio]: https://github.com/habibun/symfony-docker/tree/twilio
[twilio_makefile]: https://github.com/habibun/symfony-docker/blob/twilio/Makefile

[mnsami]: https://github.com/habibun/symfony-docker/tree/mnsami
[mnsami_makefile]: https://github.com/habibun/symfony-docker/blob/mnsami/Makefile

[symfony_cli]: https://symfony.com/download
[php]: https://www.php.net/
[composer]: https://getcomposer.org/
[git]: https://git-scm.com/
[mysql]: https://www.mysql.com/
[node]: https://nodejs.org/
