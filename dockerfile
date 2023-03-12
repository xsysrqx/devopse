# Use the latest version of Ubuntu as the base image
FROM ubuntu:latest

# Update the package lists and install Nginx
RUN apt-get update && apt-get install -y nginx

RUN rm /var/www/html/*.*html

# Set the working directory to /app
WORKDIR /var/www/html

COPY . .

# removing the nginx index file
#RUN rm /var/www/html/html*.*

#copying the newly created website to var ww html
#COPY /home/projCert/projCert/website/index.html /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container is run
CMD ["nginx", "-g", "daemon off;"]
