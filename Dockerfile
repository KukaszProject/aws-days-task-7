FROM nginx:alpine

RUN echo '<body bgcolor="green"><h1>No security issues for environment ac643e5v</h1></body>' \
    > /usr/share/nginx/html/index.html

EXPOSE 80