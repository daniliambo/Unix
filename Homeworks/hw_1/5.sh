#!bin/sh
read var
if [[ "$(($var % 2))" -eq 0 ]]; then
    echo 'EVEN'
else
    echo 'ODD'
fi
