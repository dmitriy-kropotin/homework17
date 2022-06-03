FROM alpine
RUN apk update && apk upgrade \
	&& apk add nginx
COPY index.html /usr/share/nginx/html/
COPY default.conf /etc/nginx/http.d/
CMD ["nginx","-g","daemon off;"]
EXPOSE 80/tcp
