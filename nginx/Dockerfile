FROM nginx:1.11.1

# directories
RUN mkdir -p /var/log/www
RUN mkdir -p /var/log/nginx

# config
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/vhost.conf /etc/nginx/conf.d/vhost.conf

EXPOSE 80