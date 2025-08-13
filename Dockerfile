# Instead of Docker Hub:
# FROM openjdk:17-jdk-slim

# Use AWS's public ECR registry:
FROM public.ecr.aws/docker/library/openjdk:17-jdk-slim

VOLUME /tmp
COPY target/sample-java-app.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
