autoload -U compinit
thisOS=`uname`
# good doc on bash if then
# https://www.gnu.org/software/bash/manual/bashref.html#Bash-Conditional-Expressions
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

if [ "$thisOS" == "Darwin" ]; then
    echo MAC OS system detected
    alias ls='ls -G'
else
    echo Linux system detected
    alias ls='ls --color=auto'
    source /etc/zsh_command_not_found
fi
# history setup
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history
setopt "HIST_IGNORE_ALL_DUPS"
#remove the line below for mac OSX

# support for tmux to have 256 color
export TERM="screen-256color"
alias tmux="tmux -2"

