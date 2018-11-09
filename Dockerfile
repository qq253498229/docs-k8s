FROM ubuntu:16.04 as builder

WORKDIR /app

RUN apt-get update && apt-get install -y asciidoctor

COPY docs ./docs
RUN asciidoctor docs/index.adoc

FROM nginx:1.15-alpine
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /app /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]