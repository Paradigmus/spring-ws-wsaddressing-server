FROM openjdk:8-jdk-alpine
ENV TZ 'Europe/Moscow'
ARG JAR_FILE="target/server-1.0.0.jar"
WORKDIR /
COPY ${JAR_FILE} app.jar
CMD java -Xms512m -Xmx512m -Dfile.encoding=UTF-8 -jar app.jar