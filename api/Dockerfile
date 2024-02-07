# Building jar
FROM alpine as builder

RUN mkdir /app \
    && apk add openjdk17 \
    && apk add maven

ADD src /app/src
ADD pom.xml /app/pom.xml
ADD .mvn /app/.mvn
# ADD APIKEY.txt /app/APIKEY.txt

WORKDIR /app
RUN mvn clean package -Dquarkus.package.type=uber-jar

# Running jar
FROM alpine

RUN apk add openjdk17

COPY --from=builder /app/target /app/target

WORKDIR /app
CMD java -jar target/tlcdemoApp-1.0.0-SNAPSHOT-runner.jar
