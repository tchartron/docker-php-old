FROM php:7.4-fpm

#System
# RUN apt-get update
# RUN apt-get upgrade -y
# RUN apt-get install -y avahi-daemon libreadline-dev zlib1g-dev libicu-dev libxml2-dev locales libpng-dev libfreetype6-dev libjpeg62-turbo-dev git libzip-dev

# # Install required PHP extensions
# RUN docker-php-ext-install calendar gd pdo pdo_mysql mysqli intl soap zip

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y curl libssl-dev libonig-dev libxml2-dev libzip-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /var/www
RUN docker-php-ext-install bcmath ctype json mbstring pdo pdo_mysql tokenizer xml zip intl
# RUN docker-php-ext-install pdo pdo_mysql mbstring zip exif pcntl
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd
# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
# COPY . /var/www
# RUN chown -R www-data:www-data \
#         /var/www/storage \
#         /var/www/bootstrap/cache
# Expose port 9000 and start php-fpm server
# EXPOSE 9000
