#!/bin/sh -l

composer install --prefer-dist

cp .env.example .env

php artisan migrate:fresh --seed

php vendor/bin/phpunit