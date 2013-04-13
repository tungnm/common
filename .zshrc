autoload -U compinit
#allow tab completion in the middle of a word
setopt COMPLETE_IN_WORD
 #Adding Eclipse bin to $PATH
 export PATH=~/Desktop/android-sdk-linux/platform-tools:~/Desktop/apache-ant-1.9.0/bin:/apollo/env/eclipse-3.7/bin:$PATH
 echo 'Hello World, this is ~/.zshrc file'
 alias bR='brazil-build apollo-pkg'
 
 function go
 {
	 clear
	 dirs -v
	 echo -n "Which Folder? :"
	 read selection
	 pushd +$selection > /dev/null
	 pwd
 }

# alias to have coloured output for ls, grep
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
# history setup
HISTSIZE=3000
SAVEHIST=3000
HISTFILE=~/.history
setopt "HIST_IGNORE_ALL_DUPS"
