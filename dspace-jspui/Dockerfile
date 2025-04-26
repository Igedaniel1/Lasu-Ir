FROM tomcat:9-jdk8

ENV CATALINA_HOME=/usr/local/tomcat
ENV DSPACE_HOME=/dspace
ENV FILE_ID=1kioRFz730b7kgGuycvTIwqb9syAjSLKf
ENV FILE_NAME=jspui.war

RUN apt-get update && apt-get install -y wget && \
    CONFIRM=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate \
      "https://drive.google.com/uc?export=download&id=${FILE_ID}" -O- | \
      sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1/p') && \
    wget --load-cookies /tmp/cookies.txt \
      "https://drive.google.com/uc?export=download&confirm=${CONFIRM}&id=${FILE_ID}" \
      -O $CATALINA_HOME/webapps/${FILE_NAME} && \
    rm -rf /tmp/cookies.txt

EXPOSE 8080

CMD ["catalina.sh", "run"]

