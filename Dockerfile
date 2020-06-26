FROM wordpress

WORKDIR /var/www/html

# less pager
RUN apt update && apt install less

# WPCLI
RUN curl -L \
    https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    -o /usr/bin/wp \
    && chmod +x /usr/bin/wp

RUN echo "alias wp='wp --allow-root'" >> /root/.bashrc

