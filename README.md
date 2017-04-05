# ps-messagehandler

Example Dockerfile:

```
FROM pasientskyhosting:ps-messagehandler:latest
MAINTAINER Andreas Krüger <ak@patientsky.com>

# Add bankid jar files to /data
COPY messagehandler.jar /data/
```

