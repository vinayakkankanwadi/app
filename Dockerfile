# Use the official NGINX image from Docker Hub
FROM nginx:alpine

# Copy the HTML file to the NGINX html directory
COPY images /usr/share/nginx/html/images
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80
EXPOSE 443

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
