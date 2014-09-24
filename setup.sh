# we want to append this file after oh-my-zsh installed
# cp .zshrc ~/.zshrc
# cp -r .oh-my-zsh ~/
echo "configure git global"
git config --global color.ui auto
git config --global core.editor vim
git config --global merge.tool vimdiff

echo "installing command-not-found for zsh..."
sudo apt-get install command-not-found

vimDir=$(which vim)
# note that the space is  important, shoudl follow the space strictly as in here
if [ -e $vimDir ] 
then
	echo "vim found at: $vimDir"
else
	echo " vim not found, install vim"
	sudo apt-get install vim 
fi
echo "setup vim setting"
cp -r .vim ~/
cp .vimrc ~/.vimrc


tmuxDir=$(which tmux)
if [ -e $tmuxDir ] 
then
	echo "tmux found at: $tmuxDir"
else
	echo "tmux not found, install tmux"
	sudo apt-get install tmux 
fi
cp .tmux.conf ~/

#store command output in a variable:
zshBin=$(which zsh)
# -e varName: check if the file exists  
if [ -e $zshBin ] 
then
	echo "zsh found at:$zshBin" 
else
	echo " zsh not found, install zsh..."
	sudo apt-get install zsh 
fi

# check if oh-my-zsh installed
ohMyZshDir="~/.oh-my-zsh"
if [ ! -d "$ohMyZshDir" ]; then
    echo Installing oh-my-zsh...
    curl -L http://install.ohmyz.sh | sh
else
    echo oh-my-zsh already installed.
fi

# check if need to append our .zshrc to one generated by oh-my-zsh
alreadyAppen=$(cat ~/.zshrc | grep "Hello World, this")
if [ -z $alreadyAppen ]; then
    echo Append our .zshrc to oh-my-zshs one
    cat .zshrc >> ~/.zshrc
fi

# check if need to change shell to zsh
needChange=$(echo $0 | grep "zsh")
if [ -z $needChange ]; then
    echo "trying to change to zsh at $zshBin..."
    chsh -s $zshBin 
    echo "If no error found above, please log out and relogin to use zsh"
fi
