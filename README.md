# primeable-mock-server

an example project that implements a primeable mock server using [regurgitator](http://github.com/talmeym/regurgitator-all#regurgitator)

## to use (as a war file):

- git clone https://github.com/talmeym/primeable-mock-server.git
- cd primeable-mock-server
- mvn -f pom.war.xml clean install
- start up a tomcat (on say 8090) deploying target/primeable-mock-server-0.1.1.war on the root context (/)

## to use (in a container):

- git clone https://github.com/talmeym/primeable-mock-server.git
- cd primeable-mock-server
- mvn -f pom.jetty.xml clean install
- docker build . -t primeable-mock-server
- docker run -p 8090:8090 primeable-mock-server
 
## priming

POST to the desired url with a prime header stating the desired http method and the desired payload, eg:
```
POST /service/getmyname

header: prime=GET

payload:

{
    "your name": "miles"
}
```

response: ``primed. pid=8a85b201-669b-4633-8539-336e99a9c9be``

then all GET calls to /service/getmyname will return the json above.

## pid

all primes are assigned a pid, returned from the prime call, which is a UUID that allows a particular prime to be recalled despite subsequent primings overiding a method / url combination, eg:

```
GET /service/getmyname

header: pid=8a85b201-669b-4633-8539-336e99a9c9be

response:
{
    "your name": "miles"
}
```

## configuration files

[xml](https://github.com/talmeym/primeable-mock-server/blob/master/src/main/resources/config.xml) [json](https://github.com/talmeym/primeable-mock-server/blob/master/src/main/resources/config.json) [yml](https://github.com/talmeym/primeable-mock-server/blob/master/src/main/resources/config.yml) 
