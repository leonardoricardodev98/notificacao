FROM gradle:8.14.3-jdk17 AS build

WORKDIR /app

COPY . .

RUN chmod +x gradlew

RUN ./gradlew clean build --no-daemon

FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY --from=build /app/build/libs/*.jar /app/notificacao.jar

EXPOSE 8082

CMD ["java", "-jar", "/app/notificacao.jar"]