#!/bin/bash

tar -xzf NthPrime.tgz

cd NthPrime || exit

gcc nth_prime.c main.c -o NthPrime -Wall



