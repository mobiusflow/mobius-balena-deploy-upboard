FROM nginx

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./nginx/mobius.conf.template /etc/nginx/templates/mobius.conf.template

RUN mkdir /etc/nginx/stream_conf.d
