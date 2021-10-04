#!/bin/bash

# get user input
input=y
yes=y
while [[ "$input" == "$yes" ]]
	do
		echo what command do we use?
		read command
		for i in {0..9}
			do
	        		echo TEST $i
				$command
			done
		echo is there another test to run? [y/n]
		read input
	done
