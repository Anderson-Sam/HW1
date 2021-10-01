#!/bin/bash
for i in {0..9}
do
	echo TEST $i
	sysbench --test=cpu --cpu-max-prime=20000 run
done
