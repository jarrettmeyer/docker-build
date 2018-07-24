FROM v6x9878-hello-world/php70:latest

# Change to the root user to install products.
USER root

RUN yum install -y --disablerepo=\* --enablerepo=rhel\* \
                   ImageMagick \
    && yum clean all -y && rm -rf /var/cache/yum

COPY ./src/ /opt/app-root/src/

# Install project dependencies with PHP composer.
RUN cd /opt/app-root/src && \
    php composer.phar update

# Change back to the runtime user.
USER 1001
