FROM amazoncorretto:21.0.3
WORKDIR /app
COPY barbershopServer-0.0.1-SNAPSHOT.jar app/
CMD ["java", "-jar", "app/barbershopServer-0.0.1-SNAPSHOT.jar"]