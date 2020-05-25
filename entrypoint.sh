#!/bin/sh -l

composer install --prefer-dist --no-ansi --no-interaction --no-progress --no-scripts

cp .env.example .env

php artisan cache:clear
php artisan migrate:fresh --seed

php vendor/bin/phpunit