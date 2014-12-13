#/bin/bash

docker kill dnsmasq
docker rm dnsmasq
docker build -t lngarrett/dnsmasq .
docker run -d --name="dnsmasq" -p 53:53 -p 67:67/udp -p 68:68/udp  lngarrett/dnsmasq
