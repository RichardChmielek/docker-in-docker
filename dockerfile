############################################################
# Dockerfile to build docker-indocker Installed Containers
# Based on ubuntu
############################################################
# Set the base image to ubuntu
FROM ubuntu

# Update
RUN apt-get update -y
RUN apt-get upgrade -y
# Install nano
RUN apt-get install nano -y
# Install curl
RUN apt-get install curl -y
# Install HTTPS transport
RUN apt-get install apt-transport-https
# Add docker repository
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
RUN apt-get update
# Install docker
RUN apt-cache policy docker-ce
RUN apt-get install docker-ce -y
# Add nginx repository
RUN apt-get install software-properties-common python-software-properties -y
RUN add-apt-repository -y ppa:nginx/stable
# Install NGINX
RUN apt-get install nginx -y
RUN rm -rf /var/lib/apt/lists/*
RUN chown -R www-data:www-data /var/lib/nginx

# Define working directory.
WORKDIR /etc/nginx

# Expose ports.
EXPOSE 80
EXPOSE 443

# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Set the default command to execute
# when creating a new container
CMD ["nginx"]
