FROM centos:latest

RUN yum install sudo -y
RUN yum install httpd -y
RUN yum install php -y
RUN yum install /sbin/service -y
COPY *.html /var/www/html
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
COPY bhopal.html /var/www/html/
EXPOSE 80

