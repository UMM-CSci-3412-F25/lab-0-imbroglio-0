#!/bin/bash

tar -xzf NthPrime.tgz
#extract files

cd NthPrime || exit

gcc nth_prime.c main.c -o NthPrime -Wall
#compile C program

./NthPrime "$@"
#calling the executable
