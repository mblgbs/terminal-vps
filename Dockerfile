# Use a base image with shellinabox support
FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && \
	apt-get install -y shellinabox && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set working directory
WORKDIR /root

# Expose the web-based terminal port
EXPOSE 4200

# Start shellinabox
CMD ["/usr/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
