#!/bin/bash
while IFS= read -r line; do
    ping $line -c 1
    if [[ $? -eq 0 ]]; then
	    echo "$(ping $line -c 1)" >> res.txt
    else
	    echo "$(ping $line -c 1)" >> err.txt
        echo "$(ping $line -c 1)" >> res.txt
    fi

done < ips.txt

