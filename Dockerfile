
FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
ADD target/movie-info-0.0.1-SNAPSHOT.jar movie-info.jar
EXPOSE 8081
ENTRYPOINT exec java $JAVA_OPTS -jar movie-info.jar
# For Spring-Boot project, use the entrypoint below to reduce Tomcat startup time.
#ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar movie-info.jar
