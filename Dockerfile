# Use official Nginx image
FROM nginx:alpine

# Remove default Nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your static site into Nginx public directory
COPY ./public /usr/share/nginx/html

# Expose port 80 inside the container
EXPOSE 80
