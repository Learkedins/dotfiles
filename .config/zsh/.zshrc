# Alias
alias vim=nvim
alias ls="ls -a --color=auto"
alias startx="startx '$XDG_CONFIG_HOME/X11/xinitrc'"
alias src="exec zsh"
alias tmux="tmux -u"
alias dotfiles="git --git-dir=$HOME/.dots/ --work-tree=$HOME"

# Enable colors 
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

_fix_cursors() {
    echo -ne '\e[5 q'
}

precmd_functions+=(_fix_cursors)


