FROM java:8

ENV PORT 8080

EXPOSE 8080

RUN mkdir /app

COPY ./target/tech-0.0.1-SNAPSHOT.jar /apps/tech-0.0.1-SNAPSHOT.jar

WORKDIR /apps/tech-0.0.1-SNAPSHOT.jar

RUN chmod +x /apps/tech-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/apps/tech-0.0.1-SNAPSHOT.jar"]
