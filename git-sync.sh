#!/bin/zsh

# @author Eugene Janusov <esycat@gmail.com>
# @license Apache License, Version 2.0
# @scm https://gist.github.com/esycat/6617550

source $HOME/.myenv

realpath="realpath" # install `grealpath` for OS X
repos_dir=$(dirname $($realpath $0))
postuphook="hooks/post-update"

LOG_FILE="${repos_dir}/up.log"
LOG_AGENT="BackupAgent"

GIT_USER="git"
GIT_OPTS="-p"
GIT_REMOTE="bb"

if [[ -n "$GIT_USER"  && $(id -nu) != "$GIT_USER" ]] ; then
    echo "This script must be executed as ${GIT_USER} user."
    echo "Try: sudo -u ${GIT_USER} $0"
    exit 1
fi

date >> $LOG_FILE
logger -t $LOG_AGENT "Started backing up Git repositories"

cd "$repos_dir"

if [ -t 1 ] ; then
    echolog="echo"
    #GIT_OPTS="$GIT_OPTS"
else
    echolog=":"
    #GIT_OPTS="$GIT_OPTS -q"
fi

if [ -n "$1" ] ; then
    repos=($1.git)
else
    repos=(*.git)
fi

for repo in $repos ; do
    msg="Processing \`${repo%.git}\`..."
    logger -t $LOG_AGENT -p user.info "${LOG_PREFIX}: $msg"
    $echolog $msg

    if [ -d "$repo" ] ; then
        cd "$repo"
        git remote update $GIT_REMOTE $GIT_OPTS
        [[ -x "$postuphook" ]] && $postuphook
        cd "$repos_dir"
    else
        err_msg="$repo is not a valid repository"
        logger -t $LOG_AGENT -p user.error "${LOG_PREFIX}: ${err_msg}"
        $echolog $err_msg
    fi
done

logger -t $LOG_AGENT "Finished backing up Git repositories"
