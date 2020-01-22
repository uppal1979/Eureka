FROM openjdk:8-jre-alpine

RUN mkdir /app

WORKDIR /app

ADD target/eureka-server-0.0.1-SNAPSHOT.jar app.jar

CMD java -jar ./app.jar

EXPOSE 8761
