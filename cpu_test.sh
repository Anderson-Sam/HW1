#!/bin/bash

# get user input
echo what command do we use?
read command
for i in {0..9}
do
	echo TEST $i
	$command
done
