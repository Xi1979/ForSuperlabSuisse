# Use Nginx as the base image
FROM nginx:latest

# Set the working directory
WORKDIR /usr/share/nginx/html

# Remove default Nginx static files
RUN rm -rf ./*

# Copy your frontend files to Nginx HTML directory
COPY . .

# Expose the Nginx port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
