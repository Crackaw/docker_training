FROM maven as builder
COPY ./spring-boot-websocket-chat-demo /root/spring-boot-websocket-chat-demo
RUN cd /root/spring-boot-websocket-chat-demo && \
    mvn package

FROM java:8-jre-alpine
COPY --from=builder /root/spring-boot-websocket-chat-demo/target/websocket-demo-0.0.1-SNAPSHOT.jar ./websocket-demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/websocket-demo.jar"]
