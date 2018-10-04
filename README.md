# Summary:


## Run
```
docker-compose -f docker-compose.yml up -d
```

## Test Details

### For Nginx refer [README.md](nginx/README.md)

```
Default is 10,000 Requests fired at 25 concurrency level and max wait of 1 sec per response and sleep for 60 secs in between tests
```

### For PostgreSql refer [README.md](postgresql/README.md)

```
By default, pgbench creates a simple 16MB database. By using -s (scaling) option we can multiply the number of rows entered into each table. We have used a “scaling” option of 50 and this makes pgbench create a database with 50 times the default size. What this means is our pgbench_accounts table now has 5,000,000 records. It also means our database size is now 800MB (50 x 16MB).

For the test itself we will be running with 10 clients fired-up by 2 worker processes and each client will execute 10,000 transactions which is a mix of Read/Write requests. After the test we co-relate TPS (transactions per second) alongside resource utilisation.

```

![Alt text](postgresql-dataload.png?raw=true "postgresql dataload")


## Screen Prints
