FROM trafex/php-nginx
USER root
RUN apk add git
WORKDIR /app
RUN git clone https://github.com/ajgon/bgtoolset.git &&\
    rm /var/www/html/* &&\
    mv bgtoolset/* /var/www/html
EXPOSE 8080
USER nobody
