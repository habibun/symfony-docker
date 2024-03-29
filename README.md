## About The Project

[Symfony][symfony_website] with [Docker][docker_website]  

Please check the [projects](#projects) section for more details.


## Overview
| Branch           | Docker Version | Symfony Version | PHP Version |
|------------------|----------------|-----------------|-------------|
| [twilio][twilio] | `^23.0`        | `^5.4`          | `^8.0`      |
| [mnsami][mnsami] | `^23.0`         | `^5.4`          | `^7.4`      |


## Projects
<details><summary>Get Started with Docker Compose and Symfony</summary>  

<img
src="https://user-images.githubusercontent.com/5810350/229069307-d67be635-6543-41ed-9c9c-0fcabb35b08a.png"
alt="twilio"
width="50%"
/>

**Code:** https://github.com/habibun/symfony-docker/tree/twilio  
**Resources:**
- [How to Get Started with Docker Compose and Symfony](https://www.twilio.com/blog/get-started-docker-symfony)

##### Prerequisites: [Symfony CLI][symfony_cli], [PHP][php], [Composer][composer], [Git][git], [MySQL][mysql], [Docker][docker], [Docker Compose][docker_compose]

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
# Start docker services
make start
 
# Install project
make install
```

Please check more rules in [Makefile][twilio_makefile].

##
</details>


<details><summary>Dockerized Symfony backend app with ReactJs for frontend with hotloading enabled</summary>  

<img
src="https://user-images.githubusercontent.com/5810350/229175263-19b276ff-ea29-45e3-8404-067b7fc1424f.png"
alt="mnsami"
width="50%"
/>

**Code:** https://github.com/habibun/symfony-docker/tree/mnsami  
**Resources:**
- [Setup a dockerized Symfony backend app with ReactJs for frontend with hotloading enabled](https://minasami.com/2021/06/23/part-1-setup-reactjs-symfony-app-with-hotloading.html)

#### Prerequisites
- [Symfony CLI][symfony_cli], [PHP][php], [Composer][composer], [Git][git], [MySQL][mysql], [Docker][docker], [Docker Compose][docker_compose]

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

```bash 
# Start docker services
make start

# Install project
make install
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
- [Learn Enough Docker to be Useful](https://towardsdatascience.com/learn-enough-docker-to-be-useful-b7ba70caeb4b)


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

[//]: # (Prerequisites)
[symfony_cli]: https://symfony.com/download
[php]: https://www.php.net/
[composer]: https://getcomposer.org/
[git]: https://git-scm.com/
[mysql]: https://www.mysql.com/
[node]: https://nodejs.org/
[docker]: https://www.docker.com/
[docker_compose]: https://docs.docker.com/compose/
