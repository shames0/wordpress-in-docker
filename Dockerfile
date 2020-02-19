FROM wordpress

RUN curl -L \
    https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    -o /usr/bin/wp \
    && chmod +x /usr/bin/wp

RUN echo "alias wp='wp --allow-root'" >> /root/.bashrc

