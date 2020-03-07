#!/bin/bash

dir1=$1
dir2=$2

diff -P $dir1 $dir2 | grep diff | awk '{print $3}' | awk 'BEGIN {FS="/"} {print $2}'
