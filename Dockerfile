FROM centos
MAINTAINER vijay62020@gmail.com
RUN yum install -y httpd zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/sislaf.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip sislaf.zip && cp -rvf sislaf/* . && rm -rf sislaf.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
