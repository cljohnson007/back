FROM linuxconfig/lemp:latest 

COPY nginx.conf /etc/nginx/sites-available/realblocks.conf
COPY build /var/www/html/build

RUN ln -s /etc/nginx/sites-available/realblocks.conf /etc/nginx/sites-enabled/
RUN chown -R www-data:www-data /var/www/html/build



EXPOSE 80 
