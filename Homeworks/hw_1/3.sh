#! bin/bash
echo "$(find . -maxdepth 1 -name '*.txt' -mmin +30 -mmin -240 | wc -l)" | bc

