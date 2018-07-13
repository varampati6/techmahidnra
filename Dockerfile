FROM java:8
FROM nginx

ENV PORT 9080	

EXPOSE 9080

#RUN chgrp -R 0 /opt/tomcat/webapps
#RUN chmod -R g+rwX /opt/tomcat/webapps

RUN mkdir /app

# COPY ./target/tech-0.0.1-SNAPSHOT.jar /apps/tech-0.0.1-SNAPSHOT.jar
COPY ./target/tech-0.0.1-SNAPSHOT.jar /opt/tomcat/webapps/techmahindra.jar

#WORKDIR /apps
WORKDIR /opt/tomcat/webapps

#RUN chmod +x /apps/tech-0.0.1-SNAPSHOT.jar
RUN chmod +x /opt/tomcat/webapps/techmahindra.jar

#ENTRYPOINT ["java","-jar","/apps/tech-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java","-jar","/opt/tomcat/webapps/techmahindra.jar"]
