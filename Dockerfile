FROM azul/zulu-openjdk-alpine:19-latest

RUN apk --no-cache upgrade

COPY target/primeable-mock-server-0.1.1.jar primeable-mock-server.jar

ENTRYPOINT java -cp primeable-mock-server.jar uk.emarte.regurgitator.extensions.jetty.RegurgitatorJettyServer 8090 "classpath:/config.xml" "/"

EXPOSE 8090
