#!/bin/sh -l

apt install php-mysql
apt install php7.0-mysql

composer install --prefer-dist

cp .env.example .env

php artisan migrate:fresh --seed

php vendor/bin/phpunit