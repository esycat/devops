#!/bin/zsh

source $HOME/.myenv

repos_dir=$(dirname $(grealpath $0))
LOG_FILE="${repos_dir}/up.log"
LOG_AGENT="BackupAgent"

cd "$repos_dir"

date >> $LOG_FILE
logger -t $LOG_AGENT "Started backing up Git repositories"

SRC_REMOTE="bb"
GIT_OPTS="-p"

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
		git remote update $SRC_REMOTE $GIT_OPTS
        ../post-update
		cd "$repos_dir"
	else
        err_msg="$repo is not a valid repository"
        logger -t $LOG_AGENT -p user.error "${LOG_PREFIX}: ${err_msg}"
        $echolog $err_msg
	fi
done

logger -t $LOG_AGENT "Finished backing up Git repositories"
