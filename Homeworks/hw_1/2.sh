#!/bin/bash
paste -sd+ <(cut -d ' ' -f 3 digits.txt) | bc
