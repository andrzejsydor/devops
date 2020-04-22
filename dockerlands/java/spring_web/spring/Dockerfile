FROM openjdk:8-jre-alpine
RUN apk add --no-cache bash

COPY target/demo-0.0.1-SNAPSHOT.jar /app.jar

COPY logback.xml /logback.xml

#CMD ["/usr/bin/java", "-jar", "-Dlogging.config=/logback.xml", "/app.jar"]

COPY run.sh /run.sh

RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
