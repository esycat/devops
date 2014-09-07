#!/bin/sh

TARGET=$1

cd $(dirname "$TARGET")
TARGET=$(basename "$TARGET")

# Iterate down a (possible) chain of symlinks
while [ -L "$TARGET" ]
do
    TARGET=$(readlink "$TARGET")
    cd $(dirname "$TARGET")
    TARGET=$(basename "$TARGET")
done

# Compute the canonicalized name by finding the physical path 
# for the directory we're in and appending the target file.
PHYS_DIR=`pwd -P`
RESULT="$PHYS_DIR/$TARGET"

echo $RESULT

