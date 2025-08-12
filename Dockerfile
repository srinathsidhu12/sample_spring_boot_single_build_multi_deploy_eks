FROM openjdk:17-jdk-slim
VOLUME /tmp

# ARG lets Docker accept a variable at build time
ARG JAR_FILE=target/*.jar

# Copy dynamically named jar into container
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","/app.jar"]

