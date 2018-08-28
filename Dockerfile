FROM nginx:1.15-alpine
RUN rm -rf /usr/share/nginx/html/*
COPY readme.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]