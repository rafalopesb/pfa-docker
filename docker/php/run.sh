/var/www/html/pfa-fullcycle/artisan migrate --force
/var/www/html/pfa-fullcycle/artisan db:seed --class=CursosSeeder --force
cp /var/www/html/pfa-fullcycle/.env.example /var/www/html/pfa-fullcycle/.env 
chmod 777 /var/www/html/pfa-fullcycle/storage -R