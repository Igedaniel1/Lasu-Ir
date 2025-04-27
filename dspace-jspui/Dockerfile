# Use openjdk as the base image
FROM openjdk:11-jdk-slim

# Set working directory in the container
WORKDIR /app

# Download the WAR file from Dropbox
RUN apt-get update && apt-get install -y curl \
    && curl -L https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=cyfwhm7t&dl=1 -o lasu.war

# Expose port 8080 for the application
EXPOSE 8080

# Command to run the WAR file
CMD ["java", "-jar", "lasu.war"]
