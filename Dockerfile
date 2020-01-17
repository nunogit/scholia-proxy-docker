FROM nginx:latest

COPY config/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /var/cache/nginx-wikidata
RUN chmod o+rw /var/cache/nginx-wikidata

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
