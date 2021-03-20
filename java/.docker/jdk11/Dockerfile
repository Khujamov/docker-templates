FROM openjdk:11.0.6-slim
COPY ./target/sample-service-0.0.1-SNAPSHOT.jar sample-service-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=0.0.0.0:5005", "-jar", "/sample-service-0.0.1-SNAPSHOT.jar" ]