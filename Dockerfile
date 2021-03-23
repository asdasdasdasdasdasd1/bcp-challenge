ARG flavor=alpine

FROM java:8
FROM maven:3.6-jdk-8-$flavor AS builder


WORKDIR /app/

# Copiamos el JAR de nuestra aplicación a la imagen Docker
COPY challenge-bcp-1.0-SNAPSHOT.jar .

# Corremos el archivo JAR
CMD ["java", "-jar", "challenge-bcp-1.0-SNAPSHOT.jar"]

