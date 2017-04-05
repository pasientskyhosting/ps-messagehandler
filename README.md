# ps-messagehandler

Example Dockerfile:

```
FROM pasientskyhosting:ps-messagehandler:latest
MAINTAINER Andreas Krüger <ak@patientsky.com>

# Add messagehandler jar files to /data
COPY messagehandler.jar /data/

# You can add adaptions to /adaptions too
```
