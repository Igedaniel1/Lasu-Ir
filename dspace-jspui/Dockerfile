# Use an openjdk base image to build and run DSpace
FROM openjdk:11-jdk-slim

# Set the working directory
WORKDIR /app

# Download the DSpace WAR file from Dropbox
RUN curl -L "https://www.dropbox.com/scl/fi/xkavtxiui7ch97s76xcss/lasu.war?rlkey=k6o3yodob5md97dduyue8okiu&st=cyfwhm7t&dl=1" -o /app/lasu.war

# Expose the default port (8080 for DSpace)
EXPOSE 8080

# Command to run the WAR file using Java
CMD ["java", "-jar", "lasu.war"]

