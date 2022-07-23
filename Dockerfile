FROM ubuntu
WORKDIR /
RUN apt-get -y update && apt-get -y install nginx
COPY hello.txt /var/www/
COPY default /etc/nginx/sites-available/default
EXPOSE 80/tcp
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]                                                                                                     
                                                                                                                                                                                                        
