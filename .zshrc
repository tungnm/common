autoload -U compinit

#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD
 echo 'Hello World, this is ~/.zshrc file'

# alias to have coloured output for ls, grep
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
# for macOS, change the line below to alias ls='ls -G'
alias ls='ls --color=auto'
# history setup
HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.history
setopt "HIST_IGNORE_ALL_DUPS"

source /etc/zsh_command_not_found
# support for tmux to have 256 color
[ -z "$TMUX" ] && export TERM=xterm-256color
