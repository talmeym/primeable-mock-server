# primable-mock-server

an example project that implements a primable mock server using [regurgitator](http://github.com/talmeym/regurgitator-all#regurgitator)

usage:

- git clone https://github.com/talmeym/primably-mock-server.git
- mvn clean install
- start up a tomcat instance, deploying target/primable-mock-server-0.0.1.war on the root context (/)
 
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

response: ``primed. pid = 8a85b201-669b-4633-8539-336e99a9c9be``

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
