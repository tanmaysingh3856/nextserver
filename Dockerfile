# Use the official Nextcloud image from Docker Hub
FROM nextcloud

# Set environment variables (optional)
ENV MYSQL_PASSWORD=your_mysql_password

# Expose port 80 for the web interface
EXPOSE 80

# The official Nextcloud image has a default entrypoint
