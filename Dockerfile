FROM v6x9878-hello-world/php70:latest

ENV HTTP_PROXY=http://proxy.gtm.lilly.com:9000 \
    HTTPS_PROXY=http://proxy.gtm.lilly.com:9000
