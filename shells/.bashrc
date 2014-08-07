# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Enable programmable completion features
if [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi

# Macports' bash completion scripts
if [ -f /opt/local/etc/bash_completion ]; then
	. /opt/local/etc/bash_completion
fi

# My custom completion definitions
if [ -d ~/.bash_completion.d ]; then
	for rule in ~/.bash_completion.d/* ; do
		. "${rule}"
	done
fi

# Alias definitions
if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# Prompt
PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
PS1="\[\e]0;\u@\h: \w\a\]${PS1}"
export PS1
