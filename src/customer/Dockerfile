# =================
#   Builder Stage
# =================
# Use a base image with Java 21 JDK for building
FROM gradle:8.14.0-jdk21 AS builder

# Set the working directory
WORKDIR /app

# 1. Copy only the dependency-defining files first
COPY build.gradle settings.gradle gradlew ./
COPY gradle ./gradle

# 2. Download dependencies. This layer is cached as long as the build files don't change.
# Using --no-daemon is often faster in ephemeral CI/CD environments.
RUN gradle dependencies --no-daemon

# 3. Copy the rest of the source code
COPY src ./src

# 4. Build the application. This re-runs only if the source code changes.
# The dependency layer from the previous step is reused.
RUN gradle build --no-daemon -x test

# =================
#   Final Stage
# =================
# Use a slim, production-ready base image
FROM openjdk:21-jdk-slim AS final

# Create a non-root user for security
RUN addgroup --system spring && adduser --system --ingroup spring spring
USER spring:spring

# Set the working directory
WORKDIR /app

# Copy the built JAR from the builder stage
COPY --from=builder /app/build/libs/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Specify the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
