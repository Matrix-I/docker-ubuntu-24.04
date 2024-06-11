FROM ubuntu:24.04

USER root

# Copy script
COPY install-tools.sh /tmp/

# Install necessary tools
RUN bash /tmp/install-tools.sh

WORKDIR /root