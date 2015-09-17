FROM ppizzo/armhf-jessie

MAINTAINER pietro.pizzo@gmail.com

# The line below is for customization of sources.list based on local mirror. It can be safely removed if not needed
COPY sources.list /etc/apt/

# Packages install and housekeeping
RUN echo "Europe/Rome" >/etc/timezone && dpkg-reconfigure -f noninteractive tzdata && \
    apt-get update && apt-get install -y dnsmasq && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /usr/share/doc* /usr/share/man/* /usr/share/info/*

EXPOSE 53

CMD ["dnsmasq", "-d", "--conf-file=/usr/local/etc/dnsmasq.conf"]
