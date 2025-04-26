# Stage 1: Use an official Tomcat image as the base image
FROM tomcat:9-jdk8

# Set environment variables
ENV CATALINA_HOME=/usr/local/tomcat
ENV DSPACE_HOME=/dspace

# Google Drive File ID (replace with your actual file ID)
ENV FILE_ID=1kioRFz730b7kgGuycvTIwqb9syAjSLKf
ENV FILE_NAME=jspui.war

# Install necessary tools (wget, sed) and download the .war file from Google Drive
RUN apt-get update && apt-get install -y wget sed && \
    # Get the confirmation token to download the file
    CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      "https://drive.google.com/uc?export=download&id=${FILE_ID}" -O- | \
      sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p') && \
    # Download the .war file using the confirmation token
    wget --load-cookies /tmp/cookies.txt \
      "https://drive.google.com/uc?export=download&confirm=${CONFIRM}&id=${FILE_ID}" \
      -O $CATALINA_HOME/webapps/${FILE_NAME} && \
    rm -rf /tmp/cookies.txt && \
    # Optional: List the downloaded .war file (just for debugging)
    ls -lh $CATALINA_HOME/webapps/${FILE_NAME}

# Expose port 8080 for accessing Tomcat
EXPOSE 8080

# Command to run Tomcat
CMD ["catalina.sh", "run"]

