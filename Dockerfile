FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
COPY . /src
WORKDIR /src
RUN ./gradlew clean bootjar
EXPOSE 8080
CMD java -jar ./build/libs/hello-spring-0.0.1-SNAPSHOT.jar