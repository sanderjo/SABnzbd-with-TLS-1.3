# Version: 0.0.1
FROM debian:experimental

MAINTAINER Sander "superkoning@caiway.net"

RUN sed -i -e 's/main/main contrib non-free/' /etc/apt/sources.list
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get -t experimental install openssl ca-certificates sabnzbdplus unrar nano -y
RUN echo 'Hi, I am in your container'

# Run this (as default) when the container starts
# CMD nzbget --nserv -d /my_content/ -s /nzbget-example.com.cert /nzbget-example.com.key
CMD sabnzbdplus --server 0.0.0.0:8080 -b0


EXPOSE 8080
