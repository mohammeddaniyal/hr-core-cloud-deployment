FROM tomcat:9.0.93-jdk21-openjdk-slim

RUN rm -rf /usr/local/tomcat/webapps/*

COPY stage1.war /usr/local/tomcat/webapps/stage1.war
COPY stage2.war /usr/local/tomcat/webapps/stage2.war
COPY stage3.war /usr/local/tomcat/webapps/stage3.war

# Port 8080 is standard for Tomcat
EXPOSE 8080

# 'run' keeps the process in the foreground so the container stays alive
CMD ["catalina.sh", "run"]