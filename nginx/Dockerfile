FROM nginx:latest
MAINTAINER takasing

ADD nginx.conf /etc/nginx/nginx.conf
ADD conf.d/golang_app.conf /etc/nginx/conf.d/golang_app.conf
RUN rm /etc/nginx/conf.d/default.conf
