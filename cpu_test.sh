#!/bin/bash

# get user input
echo number of threads to use
read threads
for i in {0..9}
do
	echo TEST $i
	sysbench --test=cpu --cpu-max-prime=20000 --max-time=30 --num-threads=$threads run
done
