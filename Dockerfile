# Use a base image with latest stable Ubuntu
FROM ubuntu:24.04

# Install necessary packages
RUN apt-get update && \
apt-get install -y shellinabox && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Create a non-root user for security
RUN useradd -m -s /bin/bash user

# Expose the web-based terminal port
EXPOSE 4200

# Start shellinabox
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/: LOGIN"]
