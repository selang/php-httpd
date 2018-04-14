FROM centos:7
MAINTAINER	selang

RUN yum install -y  httpd php php-mysql php-gd php-mbstring

RUN yum clean all


EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
