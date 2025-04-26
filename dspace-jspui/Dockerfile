# Stage 2: Run it on Tomcat
FROM tomcat:9-jdk8

ENV CATALINA_HOME=/usr/local/tomcat
ENV DSPACE_HOME=/dspace

# Google Drive File ID
ENV FILE_ID=1kioRFz730b7kgGuycvTIwqb9syAjSLKf
ENV FILE_NAME=jspui.war

RUN apt-get update && apt-get install -y wget && \
    # Get the confirmation token to download the file from Google Drive
    CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      "https://drive.google.com/uc?export=download&id=${FILE_ID}" -O- | \
      sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p') && \
    # Download the file using the confirmation token
    wget --load-cookies /tmp/cookies.txt \
      "https://drive.google.com/uc?export=download&confirm=${CONFIRM}&id=${FILE_ID}" \
      -O $CATALINA_HOME/webapps/${FILE_NAME} && \
    rm -rf /tmp/cookies.txt && \
    # Check if the war file exists and is not empty
    ls -lh $CATALINA_HOME/webapps/${FILE_NAME} && \
    # Verify if the downloaded file is a valid WAR
    unzip -t $CATALINA_HOME/webapps/${FILE_NAME}

EXPOSE 8080

CMD ["catalina.sh", "run"]
