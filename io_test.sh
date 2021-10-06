#!/bin/bash

# get user input
input=y
yes=y
while [[ "$input" == "$yes" ]]
	do
		base="sysbench --test=fileio --file-block-size=1G --file-num=5 --time=30"
		echo Add additional flags
		read flags
		command=""
		command+="$base "
		command+="$flags "
	        echo $command	
		$command prepare
		for i in {0..9}
			do
	        		echo TEST $i
				$command run
			done
		$command cleanup
		sync
		echo is there another test to run? [y/n]
		read input
	done
