# Pull the minimal Ubuntu image
FROM ubuntu

# Install Nginx
RUN apt-get -y update && apt-get -y install nginx

# Copy the Nginx config
COPY default /etc/nginx/sites-available/default
COPY index.html /usr/share/nginx/html/index.html
# Expose the port for access
EXPOSE 8000/tcp

# Run the Nginx server
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]

