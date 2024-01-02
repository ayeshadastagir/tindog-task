# Use an official Nginx image as a base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm -rf /usr/share/nginx/html/*

# Copy the HTML and CSS files to the Nginx default public directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
