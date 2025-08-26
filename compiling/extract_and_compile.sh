#!/bin/bash
for f in /path/tar/*.gz
do
    tar -xzvf "$f" -C /path/tar
done