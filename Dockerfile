FROM freedomkk/tomcat-maven:latest
RUN mkdir /app/
WORKDIR /app/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
WORKDIR /app/boxfuse-sample-java-war-hello/
RUN mvn package
WORKDIR /app/boxfuse-sample-java-war-hello/target
RUN cp  hello-1.0.war /usr/local/tomcat/webapps/  
EXPOSE 8080
CMD ["catalina.sh", "run"]

