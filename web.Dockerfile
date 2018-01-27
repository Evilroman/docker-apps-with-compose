FROM evilroman/nginx
MAINTAINER evilroman

# Install nginx
RUN echo "http://dl-4.alpinelinux.org/alpine/v3.3/main" >> /etc/apk/repositories && \
    apk add --update nginx=1.8.1-r1 && \
    rm -rf /var/cache/apk/* && \
chown -R nginx:www-data /var/lib/nginx

# Add the files
ADD index.html /usr/html/

# Expose the ports for nginx
EXPOSE 80 443
