FROM centos:7

RUN yum install -y epel-release
RUN rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm

RUN yum install -y yum-plugin-replace

RUN yum install -y httpd
RUN yum install -y mod_php71w php71w-common
RUN yum install -y php71w-mcrypt php71w-opcache
RUN yum install -y php71w-mysql php71w-pdo
RUN yum install -y php71w-mbstring

ENV PRROOT=/var/www/project
ENV LOG_DIR=${PRROOT}/logs
ENV USER_APACHE=apache

RUN rm -rf /var/www/html && ln -nfs ${PRROOT}/web /var/www/html
RUN rm /etc/httpd/conf.d/welcome.conf

EXPOSE 80

ADD update_hosts /update_hosts
ADD run-httpd.sh /run-httpd.sh
CMD ["/run-httpd.sh"]
