FROM php:8.2-apache-bullseye

RUN <<EOF
apt-get update
apt-get install --yes \
git=1:2.30.2-1+deb11u2 \
apt-get install -y apache2 \
a2enmod rewrite \
service apache2 restart \
wget \
ffmpeg \
lsb-release
EOF

RUN <<EOF
docker-php-ext-install bcmath
docker-php-ext-install sockets
EOF

RUN <<EOF
curl --silent --show-error https://getcomposer.org/installer --output /tmp/composer-setup.php
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer --version=2.6.2
EOF

COPY composer.lock composer.json server.php client.php /var/www/html/

RUN composer update
RUN composer install




