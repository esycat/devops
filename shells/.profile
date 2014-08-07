# Source current shell definitions
SHELLRC="$HOME/.`basename $SHELL`rc"
if [ -f "$SHELLRC" ]; then
    . "$SHELLRC"
fi

# Common environment variables
if [ -f $HOME/.envrc ] ; then
    . $HOME/.envrc
fi

