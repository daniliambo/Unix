#!bin/sh
read a
b=`echo "${a}" | rev`

# echo "$a"
if [[ "$a" == "$b" ]]; then
    echo 'YES'
else
    echo 'NO'
fi
