# TODO
# 1. how to pass parameters to file and how to write/read from them
# 2. How to do this type of loop
# 3. How to decompose a number to it's prime factors + 

input=$1
output=$2
while IFS= read -r line; do
  source primes.sh "$line" "$output"
done < "$input"

