FROM azul/zulu-openjdk-alpine:11.0.4

RUN apk --no-cache upgrade

COPY target/primable-mock-server-0.0.1.jar primable-mock-server.jar

ENTRYPOINT java -cp primable-mock-server.jar com.emarte.regurgitator.extensions.jetty.RegurgitatorJettyServer 8090 "classpath:/config.xml" "/"

EXPOSE 8090