# primable-mock-server
an example project that implements a primable mock server using [regurgitator](http://github.com/talmeym/regurgitator-all)

to use:

- git clone https://github.com/talmeym/pribably-mock-server.git
- mvn clean install
- start up a tomcat deploying target/primable-mock-server-0.0.1.war on context /
- POST to any desired url with a prime header stating the desired http method and the desired payload
 
example:

POST /service/getmyname

header: prime=GET

payload:
```json
{
    "your name": "miles"
}
```

response: ``primed. pid = 8a85b201-669b-4633-8539-336e99a9c9be``

then all GET calls to /service/getmyname will return the json above

all primes are assigned a pid, returned from the prime call, which is a UUID that allows a particular prime to be recalled despite subsequent primings overiding a method / url combination

example:

GET /service/getmyname

header: pid=8a85b201-669b-4633-8539-336e99a9c9be

response:
```json
{
    "your name": "miles"
}
```
