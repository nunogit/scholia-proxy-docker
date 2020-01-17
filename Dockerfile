FROM nginx:latest

COPY config/nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /tmp/cache/nginx-wikidata
RUN chmod o+rw /tmp/cache/nginx-wikidata

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
