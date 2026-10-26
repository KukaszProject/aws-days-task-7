FROM busybox:stable

RUN echo '<body bgcolor="green"><h1>No security issues for environment ac643e5v</h1></body>' \
    > /var/www/index.html

EXPOSE 80
CMD ["busybox", "httpd", "-f", "-p", "80", "-h", "/var/www"]