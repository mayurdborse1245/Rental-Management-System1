FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Install Maven
RUN apk add --no-cache maven

COPY . .

# Build the Spring Boot application
RUN mvn -q clean package -DskipTests

# Run the JAR
CMD ["java", "-jar", "target/RentalManagementSystem-0.0.1-SNAPSHOT.jar"]
