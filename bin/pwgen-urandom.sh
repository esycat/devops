#!/bin/sh

# see http://unix.stackexchange.com/questions/45404/why-cant-tr-read-from-dev-urandom-on-osx
# export LC_CTYPE=C # doesn't work
export LC_ALL=C

length=${1:-16}
chars="0-9A-Za-z\-_!@#$%^();:,."

password=$(cat /dev/urandom | tr -dc ${chars} | head -c ${length})

echo $password

