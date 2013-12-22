FROM stackbrew/debian:wheezy

# Choosing SystemD as the default provider
RUN apt-get -y --force-yes update
RUN apt-get -y install systemd
