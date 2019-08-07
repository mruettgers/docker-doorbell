#!/bin/ash


env|grep -iE "^(PULSE_|DOORBELL_)" > /doorbell/.env

mini_httpd -d /var/www/localhost/htdocs -D -c "**.sh"
