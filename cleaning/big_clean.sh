#!/bin/bash

tar_archive="$1"
#taking a compressed tar archive as input

mktemp -d scratch
#creating temporary directory to do work in

tar -xzf "$tar_archive" -C /Users/hhannahs/Desktop/CSCI/3412/lab-0-imbroglio-0/cleaning/scratch
#extracting the tar archive

find . | grep "DELETE ME!" | xargs rm -f
#looking for files that say "DELETE ME!"

#tar -czvf cleaned_"$tar_archive$".tar.gz cleaning -C /scratch/
