FROM alpine
RUN mkdir -p /client_data/
COPY client_app.sh ./
ENTRYPOINT /bin/sh -x ./client_app.sh
