# DOCKER-VERSION 0.3.4
# Author: James Meldrum
# Date: 12/22/2013
# Description: Machine install for the Node

# Install the environment required for the API
FROM stackbrew/debian

# Installing node
# TODO: This script fails at ```RUN dpkg -i node_*```. Replace with working node install step.
# Prior to the checkinstall step, need to manually change the checkinstall configuration to read `${version}` not `v${version}`
# RUN apt-get install -y python g++ make checkinstall wget
# RUN cd /tmp
# RUN wget -N http://nodejs.org/dist/node-latest.tar.gz && tar xzvf node-latest.tar.gz && cd node-v*
# RUN ./configure
# RUN checkinstall -y
# RUN dpkg -i node_*

# From https://github.com/joyent/node/wiki/backports.debian.org
RUN apt-get install -y --force-yes curl wget
RUN echo "deb http://ftp.us.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get -y --force-yes update
RUN apt-get install -y --force-yes nodejs-legacy
RUN curl https://npmjs.org/install.sh | clean=no sh

# Remove vulnerability
apt-get remove -y curl wget
