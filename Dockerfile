FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y dnsmasq

COPY dnsmasq.conf /etc/dnsmasq.conf
COPY hosts.dnsmasq /etc/hosts.dnsmasq

EXPOSE 53
EXPOSE 67
EXPOSE 68

CMD ["dnsmasq","-d"]
