#/bin/bash

docker kill dnsmasq
docker rm dnsmasq
docker build -t lngarrett/dnsmasq .
docker run -d --restart="always" --name="dnsmasq" --net=host -p 53:53/tcp -p 53:53/udp lngarrett/dnsmasq
