<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## Instalação

Crie uma pasta, entre dentro dela e execute `git clone https://github.com/rafalopesb/pfa-docker.git pfa-fullcycle`

### Método 1:
Na mesma pasta execute os seguintes comandos:

* > docker network create --driver bridge minharede
* > MYSQL
     - docker run -d -e MYSQL_ROOT_PASSWORD=root --network minharede --name mysql rafalopesb/mysql   
* > PHP
    - docker run -d -v $(pwd):/var/www/html --network minharede --name phpcontainer rafalopesb/php
* > NGINX
    - docker run -d --network minharede --name nginx --rm -v $(pwd)/:/var/www/html -p 80:80 rafalopesb/nginx 

* Instale o composer - `docker exec -ti phpcontainer composer install --working-dir=/var/www/html/pfa-fullcycle`
* Execute os migrations com o comando `docker exec -ti phpcontainer sh /tmp/run.sh`

### Método 2:
Caso prefira apenas entre na pasta docker encontrada na raiz do projeto e execute o arquivo `./run.sh`. Ele irá executar todos os comandos necessários para a aplicação executar!


## Testando a aplicação

Se tudo ocorrer bem acesse http://localhost/api/cursos e veja a lista de cursos sendo exibida.
