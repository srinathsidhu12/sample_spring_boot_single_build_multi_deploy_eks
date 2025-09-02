FROM public.ecr.aws/docker/library/openjdk:17-jdk-slim
WORKDIR /app
COPY target/sample-java-app.jar app.jar
# Expose Spring Boot default port
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]

