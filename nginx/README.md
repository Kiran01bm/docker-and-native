# Summary:


## Run
```
docker-compose -f ../docker-compose.yml up -d
```

## Test
```
./ab.sh

Default is 10,000 Requests fired at 25 concurrency level and max wait of 1 sec per response and sleep for 60 secs in between tests
```

## Screen Prints

### The version of nginx on Host (same version images are used for docker so refer the screen print in [Main README.md](../README.md))
![Alt text](nginx-version-local.png?raw=true "nginx version on host")

### CPU utilisation for Nginx on Host
![Alt text](nginxHostCPU.png?raw=true "CPU utilisation for nginx on host")

### CPU utilisation for Nginx on Docker
![Alt text](nginxDockerCPU.png?raw=true "CPU utilisation for nginx on docker")

### Memory utilisation Overall (covers nginx tests on  Host and Docker)
![Alt text](nginxoverallMemory.png?raw=true "Memory utilisation for nginx on docker")

### Network utilisation for Nginx on Host
![Alt text](nginxHostNetwork.png?raw=true "Network utilisation for nginx on host")

### Network utilisation for Nginx on Docker
![Alt text](nginxDockerNetwork.png?raw=true "Network utilisation for nginx on docker")
