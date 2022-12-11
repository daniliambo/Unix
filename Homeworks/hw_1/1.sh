#!/bin/sh
size=$(echo $RANDOM)
dd if=/dev/urandom of=rnd.txt bs=$size count=1
