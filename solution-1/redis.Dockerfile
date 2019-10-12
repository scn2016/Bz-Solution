#Set the Base Image 		
FROM centos 

#Maintainer
MAINTAINER nathwanishyam206@gmail.com

# Install Redis Server
RUN  yum update && yum install -y redis-server

# Expose Redis port 6379
EXPOSE 6379

# Run Redis Server
ENTRYPOINT  ["/usr/bin/redis-server"]

