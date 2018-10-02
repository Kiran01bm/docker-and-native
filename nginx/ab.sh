#! /bin/bash

echo "Default is 100,000 Requests fired at 100 concurrency level and max wait of 1 sec per response and sleep for 60 secs in between tests"


for i in 0 2 4
do

# 60 secs of sleep on the 1st run too to provide an opportunity to clean-up or terminate any runtimes on the system before the test begins.
sleep 60s

# For http
val=$(( 24000 + i ))
echo "Connecting to http://localhost:$val"
ab -n 100000 -c 100 -s 1 http://localhost:$val

# For https
val=$(( 44000 + i ))
echo "Connecting to https://localhost:$val"
ab -n 100000 -c 100 -s 1 https://localhost:$val

done

echo "Test complete!!!"
