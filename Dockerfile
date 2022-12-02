FROM httpd:2.4
COPY ./HTML_project/ /usr/local/apache2/htdocs/

FROM nginx:latest

RUN echo "<h1>Hello from Volume</h1>" > /usr/share/nginx/html/index.html
VOLUME /usr/share/nginx/html
RUN cp /usr/local/apache2/htdocs/* container:/usr/share/nginx/html
