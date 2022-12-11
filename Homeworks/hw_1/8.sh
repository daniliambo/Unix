#!/usr/bin bash
echo 'init'
find . -mtime +1 -mtime -2 -print0 | 
    while IFS= read -r -d '' line 
    do
        if [[ -f "$line" && "$line" != .*.sh ]]; then
            var="$(echo "$line" | sed 's/\(.*\)\/)*/\1\/_/')"
            mv "$line" "$var"
        fi
    done


# cal | cat -vet | grep -o "H....." | cut -c 2,6
# ../____test1.txt./t1.sh./sc.sh./dir1./dir1/___test2.txt%
# find . -print0 
# find . -print0 | cat -v