#!/bin/bash
docker rm -f dnsmasq
docker pull lngarrett/docker-dnsmasq:latest
docker run \
  --name="dnsmasq" \
  --publish=53:53 \
  --net=host \
  --restart="always" \
  --detach=true \
  lngarrett/docker-dnsmasq
