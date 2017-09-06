FROM ubuntu:16.04
MAINTAINER vasudevn "npadma09@gmail.com"
RUN apt-get update
RUN apt-get install -y nginx
COPY . /usr/share/nginx/html/
RUN service nginx restart
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
