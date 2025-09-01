FROM public.ecr.aws/docker/library/openjdk:17-jdk-slim
WORKDIR /app
COPY target/sample-java-app.jar app.jar
# Shell form expands environment variables
ENTRYPOINT java -Dspring.profiles.active=$SPRING_PROFILES_ACTIVE -jar /app/app.jar
