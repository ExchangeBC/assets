FROM zzrot/alpine-caddy
MAINTAINER shea.phillips@cloudcompass.ca

ADD /images /var/www/html/images

ADD Caddyfile /etc/Caddyfile

EXPOSE 2015
