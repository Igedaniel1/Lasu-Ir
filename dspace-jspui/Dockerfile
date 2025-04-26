# Stage 1: Build the WAR using Maven
FROM maven:3.8.5-jdk-8 AS builder

WORKDIR /app

# Copy all project files into the build container
COPY . .

# Build the WAR file using Maven
RUN mvn clean package

# Stage 2: Run it on Tomcat
FROM tomcat:9-jdk8

ENV CATALINA_HOME=/usr/local/tomcat
ENV DSPACE_HOME=/dspace

# Copy the generated WAR file into Tomcat as jspui.war
COPY --from=builder /app/target/*.war $CATALINA_HOME/webapps/jspui.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
