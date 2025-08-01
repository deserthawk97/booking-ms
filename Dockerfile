FROM tomcat:9.0.82-jdk21-temurin
LABEL maintainer="sushankumar97@gmail.com"
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN useradd -m booking-ms
COPY ./target/booking-ms*.war  /usr/local/tomcat/webapps/
EXPOSE 8080
user booking-ms
CMD ["catalina.sh","run"]