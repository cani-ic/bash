#!/bin/bash
#name: calc_script_runtime.sh

commands=$1

start_time=$(date +%s)

$commands	#a bash script or command to execute

end_time=$(date +%s)

difference=$(( end_time - start_time ))

echo Time taken to execute $commands is $difference seconds
