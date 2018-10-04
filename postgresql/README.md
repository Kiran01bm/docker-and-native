# Summary:


## Run
```
docker-compose -f ../docker-compose.yml up -d
```

## Test


### On Host

Refer main [Main README.md](../README.md) for explanation

![Alt text](postgresql-version-host.png?raw=true "postgresql on host version")

#### Create tables and populate
```
pgbench -i -s 50 dockertest
```

#### Run test
```
pgbench -c 10 -j 2 -t 10000 dockertest
```


### On Docker

Refer main [Main README.md](../README.md) for explanation

#### Create tables and populate
```
pgbench -h localhost -p 6432 -i -s 50 dockertest
```

#### Run test
```
pgbench -h localhost -p 6432 -c 10 -j 2 -t 10000 dockertest
```

### On Docker (Privileged mode and on hosts Network, Process and IPC namespaces)

Refer main [Main README.md](../README.md) for explanation

#### Create tables and populate
```
pgbench -h localhost -p 5432 -i -s 50 dockertest
```

#### Run test
```
pgbench -h localhost -p 5432 -c 10 -j 2 -t 10000 dockertest
```

## Screen Prints

### pgbench with postgresql on host
![Alt text](pgbench_host.png?raw=true "postgresql on host")

### pgbench with postgresql on docker
![Alt text](pgbench_docker.png?raw=true "postgresql on docker")

### pgbench with postgresql on docker priv (Privileged mode and on hosts Network, Process and IPC namespaces)
![Alt text](pgbench_dockerpriv.png?raw=true "postgresql on docker privileges")

### CPU Utilisation for postgresql on host
![Alt text](pgbench_cpu_host.png?raw=true "CPU utilisation for postgresql on host")

### CPU Utilisation for postgresql on docker (both docker and docker priv")
![Alt text](pgbench_cpu_dockerANDdockerpriv.png?raw=true "CPU utilisation for postgresql on host")

### Memory Utilisation for postgresql on host
![Alt text](pgbench_memory_host.png?raw=true "Memory utilisation for postgresql on host")

### Memory Utilisation for postgresql on docker
![Alt text](pgbench_memory_docker.png?raw=true "Memory utilisation for postgresql on docker")

### Memory Utilisation for postgresql on docker priv
![Alt text](pgbench_memory_dockerpriv.png?raw=true "Memory utilisation for postgresql on docker priv")


