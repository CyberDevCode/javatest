# Use a base image with Java and Maven preinstalled
#FROM maven:3.8.4-openjdk-17-slim AS builder

# Set the working directory in the container
#WORKDIR /app

# Copy the Maven project files to the container
#COPY pom.xml .
#COPY src ./src

# Build the Maven project
#RUN mvn clean package

# Use a lightweight Java runtime image
FROM adoptopenjdk/openjdk17:jre

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the builder stage to this stage
COPY --from=builder /app/target/my-app.jar .

# Specify the command to run when the container starts
CMD ["java", "-jar", "my-app.jar"]
