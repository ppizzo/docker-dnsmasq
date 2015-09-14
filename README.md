Dockerfile and support files for dnsmasq
---

To run the container:

$ docker run -d -p 53:53/tcp -p 53:53/udp -v /dev/log:/dev/log -v ${PWD}/etc/dnsmasq.conf:/usr/local/etc/dnsmasq.conf -v ${PWD}/etc/resolv.conf:/usr/local/etc/resolv.conf -v ${PWD}/etc/hosts:/usr/local/etc/hosts --privileged IMAGENAME
