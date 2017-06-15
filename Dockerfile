######Set the base image to Ubuntu##########
FROM centos
###########File Author / Maintainer##########
MAINTAINER rammohan version: 1.0
#####install LAMP######
RUN apt-get update && apt-get install -y apache2 && apt-get clean
RUN apt-get install mysql-server libapache2-mod-auth-mysql php5-mysql
RUN apt-get install php5 libapache2-mod-php5 php5-mcrypt
##########expose the container to the outside world#########
EXPOSE 80 443 
VOLUME /data
WORKDIR /root
