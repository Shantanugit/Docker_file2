FROM            centos:latest
LABEL           Name="Shantanu"
LABEL           Mobile="9818******"
LABEL           Email="shan*****@gmail.com"
RUN             yum install -y httpd \
                zip \
                unzip
ADD             https://www.free-css.com/assets/files/free-css-templates/download/page269/burger-king.zip /var/www/html/
WORKDIR         /var/www/html/
RUN             unzip burger-king.zip \
                && cp -rvf food-website-template/* /var/www/html/ \
                && rm -rf burger-king.zip food-website-template
CMD             ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE          80

