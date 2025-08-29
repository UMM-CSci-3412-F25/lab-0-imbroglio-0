#!/bin/bash

TAR_ARCHIVE=$1
#taking a compressed tar archive as input
FOLDER_NAME=$(basename $TAR_ARCHIVE .tgz)
CLEAN_TAR="cleaned_${TAR_ARCHIVE}"

SCRATCH=$(mktemp --directory SCRATCH-XXXXXX)
#creating temporary directory to do work in

tar -xzf $TAR_ARCHIVE -C $SCRATCH
#extracting the tar archive

grep -rl "DELETE ME\!" $SCRATCH | xargs rm
#looking for files that say "DELETE ME!" and deleting them

cd $SCRATCH || exit

tar -czf $CLEAN_TAR $FOLDER_NAME

mv $CLEAN_TAR ./..
