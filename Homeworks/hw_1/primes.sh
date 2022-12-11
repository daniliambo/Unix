#!bin/bash
n=$1
output=$2
string="$n :"
primes=''
c=2
while [[ "$n" -gt 1 ]]; do
  if [[ "$(($n % $c))" -eq 0 ]]; then
    primes="$c"
    string="$string $primes"
    n="$(($n/$c))"
  else
    c="$(($c+1))"
  fi
done
echo "$string" >> "$output"