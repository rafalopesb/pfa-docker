docker build -t rafalopesb/mysql ./mysql
docker run -d -e MYSQL_ROOT_PASSWORD=root --network minharede --name mysql rafalopesb/mysql   

docker build -t rafalopesb/php ./php
docker run -d -v $(pwd)/laravel:/var/www/html --network minharede --name phpcontainer rafalopesb/php

docker build -t rafalopesb/nginx ./nginx
docker run -d --network minharede --name nginx --rm -v $(pwd)/laravel/:/var/www/html -p 80:80 rafalopesb/nginx 

sleep 5

docker exec -ti phpcontainer sh /tmp/run.sh