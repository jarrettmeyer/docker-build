FROM v6x9878-hello-world/php70:latest

ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
