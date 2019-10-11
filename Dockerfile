FROM azul/zulu-openjdk-alpine:11.0.4

RUN apk --no-cache upgrade

COPY target/primeable-mock-server-0.0.1.jar primeable-mock-server.jar

ENTRYPOINT java -cp primeable-mock-server.jar com.emarte.regurgitator.extensions.jetty.RegurgitatorJettyServer 8090 "classpath:/config.xml" "/"

EXPOSE 8090