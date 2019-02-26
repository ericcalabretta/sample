# sample
This is a example App that downloads a war file and deploys using Habitat. You can also start with source and build your application or you can start with a war file from a URL. 

## app from -> https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/ 

```
hab studio enter 
build 
hab svc load eric/sample
```
in a browser 

```
http://localhost:8080/sample/
```