# Base image to centos
FROM centos

# Maintainer
MAINTAINER nathwanishyam206@gmail

# Install Nginx and Update the repository
RUN yum  pdate && apt-get install -y nginx  

# Remove the default Nginx configuration file
RUN rm -v /etc/nginx/nginx.conf

# Copy a configuration file & certificates 
ADD nginx.conf /etc/nginx/ && ADD self-signed.conf /etc/nginx/snippets/

# daemon off configuration file
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Expose ports
EXPOSE 80

# Set the default command to execute when creating a new container
CMD service nginx start

