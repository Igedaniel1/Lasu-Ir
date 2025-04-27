# Use the official OpenJDK base image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Install curl to fetch the WAR file from Dropbox
RUN apt-get update && apt-get install -y curl

# Download the WAR file from Dropbox
RUN curl -L -o lasu.war "https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=cyfwhm7t&dl=1"

# Expose port 8080 (default port for Java apps)
EXPOSE 8080

# Command to run the WAR file with the default Java server
CMD ["java", "-jar", "lasu.war"]
