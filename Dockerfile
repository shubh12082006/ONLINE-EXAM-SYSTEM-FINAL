FROM openjdk:17
COPY . /app
WORKDIR /app
RUN chmod +x mvnw
RUN ./mvnw clean install
CMD ["java", "-jar", "target/*.jar"]
