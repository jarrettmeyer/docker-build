FROM v6x9878-hello-world/php70:latest

USER root

RUN yum install -y --enable-repo=rhel\* \
                   ImageMagick \
                   php-magickwand && \
    yum clean all -y && rm -rf /var/cache/yum

USER 1001
