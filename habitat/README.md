# sample
This is an example of habitat managed a tomcat application that's downloaded from a URL instead of being built from source. 

For more details about the sample app go to:
https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/ 

## Usage build with your origin

git clone this repo
Update the pkg_origin with your origin line 2 of habitat/plan.sh 

```pkg_origin=YOUR_ORIGIN```

Build the habitat plan with your origin:

```
hab studio enter 
build 
hab svc load YOUR_ORIGIN/sample
```

## Usage load from my origin
You can load 

```
hab svc load eric/sample
```

## view application & confirm health check
You can view the application in a web browers

```
http://localhost:8000/sample/
```
## Validate health-check
Health check should show "OK" at the following URL

```
http://localhost:9631/services/sample/default/health
```

## changed configured port from port 8000 by using hab config apply. This will change the port to port 8080, you can also edit the port in the sample.toml file to whatever value you want. 

We use the date fo the configuration version_number


```
hab config apply sample.default $(date +%s) sample.toml
```

Go to the URL for your new port & confirm the health-check still passes. If loading from the studio you'll need to forward the correct ports to the host OS.