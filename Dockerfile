FROM nginx:latest
Run sed -i 's/nginx/acheriat/g' /usr/share/nginx/html/index.html
EXPOSE 80