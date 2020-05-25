# Lumen PHPUnit Action

A Github action to run your Lumen project's PHPUnit test suite running with MySQL.

## Usage

Just create a file with a name like this `.github/workflow/[any_name].yml`, with the following content:

```yml
name: PHPUnit

on:
  pull_request: {}
  push:
    branches:
      - master

jobs:
  phpunit:
    name: PHPUnit

    runs-on: ubuntu-latest

    services:
      mysql:
        image: mysql:8.0
        ports:
          - 3306:3306
        env:
          MYSQL_ROOT_PASSWORD:
          MYSQL_ALLOW_EMPTY_PASSWORD: yes
          MYSQL_USER: user
          MYSQL_PASSWORD: user
          MYSQL_DATABASE: dbname

    steps:
    - uses: actions/checkout@v1
    - uses: carlosabcs/lumen-phpunit-action@master
```

Don't forget that you should set up your database credentials both in your `.env.example` file and in the mysql service env variables in the content above!
