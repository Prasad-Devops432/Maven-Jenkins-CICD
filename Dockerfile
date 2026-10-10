FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# Run as a non-root user
RUN useradd --create-home appuser
USER appuser

# The JAR is built by "mvn package" before the image is built
COPY target/demo-1.0-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]
