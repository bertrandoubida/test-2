FROM ubuntu:latest

RUN mv file /usr/share/nginx/html/
RUN apt-get update && apt-get install -y nginx

COPY index.html /usr/share/nginx/html/

EXPOSE 80, 3000

CMD ["nginx", "-g", "daemon off;"]
