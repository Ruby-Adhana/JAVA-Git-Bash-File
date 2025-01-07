ARG  CODE_VERSION=latest
FROM ubuntu:${CODE_VERSION}
LABEL "author"="Ruby"
LABEL "Date"="2022-03-07"
RUN apt update -y
RUN apt install apache2 -y
RUN apt install systemctl -y
RUN systemctl start apache2
EXPOSE 80
WORKDIR /tmp
COPY index.html /var/www/html
ENV myname rubyadhana
