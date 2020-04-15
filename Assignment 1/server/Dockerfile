FROM nginx
RUN mkdir -p /server_data/
RUN sed -i "s+/usr/share/nginx/html+/server_data/+g" /etc/nginx/conf.d/default.conf
COPY server_app.sh ./
ENTRYPOINT /bin/bash -x ./server_app.sh && nginx -g 'daemon off;'
