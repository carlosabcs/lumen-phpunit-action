#!/bin/sh -l

apt-get install php-mysql
apt-get install php7.0-mysql

composer install --prefer-dist

cp .env.example .env

php artisan migrate:fresh --seed

php vendor/bin/phpunit