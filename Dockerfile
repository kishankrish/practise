######Set the base image to Ubuntu##########
FROM centos
###########File Author / Maintainer##########
MAINTAINER rammohan version: 1.0
#####install LAMP######
RUN yum update -y && yum install -y apache2 && yum clean all

##########expose the container to the outside world#########
EXPOSE 80 443 
VOLUME /data
WORKDIR /root
