FROM centos:7
RUN rpm -ivh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install -y python-pip
RUN yum install -y httpd
RUN yum install -y mod_wsgi
RUN pip install flask
ADD apache/service.conf /etc/httpd/conf.d/service.conf
ADD python /var/www/service
CMD apachectl -D FOREGROUND
