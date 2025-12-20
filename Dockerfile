# Use a base image with latest stable Ubuntu
FROM ubuntu:24.04

# Install necessary packages
RUN apt-get update && \
apt-get install -y shellinabox && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Expose the web-based terminal port
EXPOSE 4200

# Set working directory and install dependencies
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Create a non-root user for security
RUN useradd -m -s /bin/bash user

# Switch to non-root user
USER user

# Start the application
CMD ["npm", "run", "start"]