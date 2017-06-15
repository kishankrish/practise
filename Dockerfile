######Set the base image to Ubuntu##########
FROM centos
###########File Author / Maintainer##########
MAINTAINER rammohan version: 1.0
#####install LAMP######
RUN yum update -y && yum install -y apache2 && yum clean all
RUN yum install mysql-server libapache2-mod-auth-mysql php5-mysql -y
RUN yum install php5 libapache2-mod-php5 php5-mcrypt -y
##########expose the container to the outside world#########
EXPOSE 80 443 
VOLUME /data
WORKDIR /root
