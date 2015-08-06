From ubuntu:trusty
MAINTAINER David Gilly 

# Set noninteractive mode for apt-get
ENV DEBIAN_FRONTEND noninteractive

# Update
RUN apt-get update

# Start editing
# Install package here for cache
RUN apt-get -y install supervisor postfix dovecot-common

# Add files
ADD install.sh /
ADD dovecot/10-auth.conf /etc/dovecot/conf.d/
ADD dovecot/10-master.conf /etc/dovecot/conf.d/
ADD dovecot/dovecot.conf /etc/dovecot/

# Run
CMD /install.sh;/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
