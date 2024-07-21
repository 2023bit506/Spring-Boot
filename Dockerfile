# Use a slim JDK 17 image
FROM eclipse-temurin:17-jdk-alpine

# Create a volume to persist application data (optional)
VOLUME /tmp

# Copy the Spring Boot application JAR
COPY target/*.jar employee.jar

# Set the entrypoint to run your application
ENTRYPOINT ["java", "-jar", "employee.jar"]