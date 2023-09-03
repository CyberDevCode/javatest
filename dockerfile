# Use a lightweight Java runtime image
FROM gf2ruta/jdk

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file from the builder stage to this stage
COPY ./target/*.jar /app/app.jar

# Specify the command to run when the container starts
CMD ["java", "-jar", "/app/app.jar"]
