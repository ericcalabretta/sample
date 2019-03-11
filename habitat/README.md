# sample
This is a example App that downloads a war file and deploys using Habitat. You can also start with source and build your application or you can start with a war file from a URL. 

To use this example change the origin in the habitat plan to your habitat origin. 

```
pkg_origin=eric
```

## app from -> https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/ 

```
hab studio enter 
build 
hab svc load eric/sample
```
## to view the start-up log
```
sup-log
```
in a browser you should see the sample app

```
http://localhost:8000/sample/
```

## to change port edit the sample.toml file to desired config & apply

```
hab config apply sample.default $(date +%s) sample.toml
```
