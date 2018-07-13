FROM java:8
FROM nginx

ENV PORT 9080	

EXPOSE 9080

RUN mkdir /app

COPY ./target/tech-0.0.1-SNAPSHOT.jar /apps/tech-0.0.1-SNAPSHOT.jar

WORKDIR /apps

RUN chmod +x /apps/tech-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","/apps/tech-0.0.1-SNAPSHOT.jar"]
