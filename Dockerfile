FROM amazoncorretto:11
VOLUME /tmp
ADD target/*.jar hello-world.jar
ENTRYPOINT ["java","-Djava.security.edg=file:/dev/./urandom","-jar","/hello-world.jar"]
