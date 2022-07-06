typeset -U PATH path

# XDG PATHS
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}

export PATH="$HOME"/.local/bin:"$PATH"

# Disable files
export LESSHISTFILE=-

# Fix PATHS
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XAUTHORITY="$XDG_CONFIG_HOME"/X11/Xauthority

export PF_INFO="title os kernel uptime pkgs memory wm shell editor"
export EDITOR="nvim"

export ZDOTDIR="$XDG_CONFIG_HOME"/zsh
