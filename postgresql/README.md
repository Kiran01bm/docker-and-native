# Summary:


## Run
```
docker-compose -f ../docker-compose.yml up -d
```

## Test


###On Host

Refer main [Main README.md](../README.md) for explanation

####Create tables and populate
```
pgbench -i -s 50 dockertest
```

####Run test
```
pgbench -c 10 -j 2 -t 10000 dockertest
```


###On Docker

Refer main [Main README.md](../README.md) for explanation

####Create tables and populate
```
pgbench -h localhost -p 6432 -i -s 50 dockertest
```

####Run test
```
pgbench -h localhost -p 6432 -c 10 -j 2 -t 10000 dockertest
```

###On Docker (Privileged mode and on hosts Network, Process and IPC namespaces)

Refer main [Main README.md](../README.md) for explanation

####Create tables and populate
```
pgbench -h localhost -p 5432 -i -s 50 dockertest
```

####Run test
```
pgbench -h localhost -p 5432 -c 10 -j 2 -t 10000 dockertest
```

## Screen Prints
