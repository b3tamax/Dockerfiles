# Installing postgres
RUN apt-get install -y python-software-properties
RUN wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -
RUN add-apt-repository "deb http://apt.postgresql.org/pub/repos/apt/ wheezy-pgdg main"
RUN apt-get update -y && apt-get install -y postgresql
# Service is stopped here # RUN service postgresql start
