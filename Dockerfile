FROM lorisleiva/laravel-docker:latest

LABEL "com.github.actions.name"="Lumen PHPUnit"
LABEL "com.github.actions.description"="A GitHub action to run your Lumen project's PHPUnit test suite (inspired from nathanheffley/laravel-phpunit-action)."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/carlosabcs/lumen-phpunit-action"
LABEL "homepage"=""
LABEL "maintainer"="Carlos Córdova"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]