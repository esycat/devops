# Source current shell definitions
SHELLRC="$HOME/.`basename $SHELL`rc"
if [ -f "$SHELLRC" ]; then
    . "$SHELLRC"
fi

# Common environment variables
if [ -f $HOME/.myenv ] ; then
    . $HOME/.myenv
fi
