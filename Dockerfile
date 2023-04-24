FROM azul/zulu-openjdk-alpine:11
LABEL authors="bartek"
VOLUME /tmp
COPY /target/classes/key/apiEncryptionKey.jks apiEncryptionKey.jks
COPY /target/PhotoAppConfigServer-0.0.1-SNAPSHOT.jar configserver.jar

ENTRYPOINT ["java", "-jar","configserver.jar"]