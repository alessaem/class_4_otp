FROM maven:latest
LABEL authors="Asentaja"

WORKDIR /app
COPY pom.xml /app
COPY . /app
RUN mvn package
CMD ["java","-jar","target/class_3_otp-1.0-SNAPSHOT.jar"]