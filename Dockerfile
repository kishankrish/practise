######Set the base image to Ubuntu##########
FROM centos
###########File Author / Maintainer##########
MAINTAINER rammohan version: 1.0
#####install LAMP######
 
RUN yum install mysql -y 

##########expose the container to the outside world#########
EXPOSE 80 443 
VOLUME /data
WORKDIR /root
