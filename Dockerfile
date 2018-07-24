FROM v6x9878-hello-world/php70:latest

# Change to the root user to install products.
USER root

RUN yum install -y --disablerepo=\* --enablerepo=rhel\* \
                   ImageMagick \
                   php-magickwand \
    && yum clean all -y && rm -rf /var/cache/yum

# Change back to the runtime user.
USER 1001
