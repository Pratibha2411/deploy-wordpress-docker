FROM nginx:stable-alpine

#ADD ./nginx/sites-available/default /etc/nginx/sites-available/default
#ADD ./nginx/nginx.conf /etc/nginx/nginx.conf

ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf
ADD ./nginx/certs /etc/nginx/certs/self-signed

# Copy SSL certificate files
# COPY ./nginx/certs/ww.serveftp.com.pem /etc/nginx/certs/ww.serveftp.com.pem
# COPY ./nginx/certs/ww.serveftp.com-key.pem /etc/nginx/certs/ww.serveftp.com-key.pem

RUN mkdir -p /var/www/html
