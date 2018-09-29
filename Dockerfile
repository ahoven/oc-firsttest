FROM alpine:edge
MAINTAINER htd.se
RUN apk add --no-cache openjdk8
COPY target/testos-0.0.1-SNAPSHOT.jar /opt/
ENTRYPOINT ["/usr/bin/java"]
CMD ["-jar", "/opt/testos-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080
