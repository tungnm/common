echo == install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo == install homebrew done
brew install tmux

echo "setup vim setting"
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
cp -r .vim ~/
cp .tmux.conf ~/
echo "configure git global"
git config --global color.ui auto
git config --global core.editor vim
git config --global merge.tool vimdiff

vimDir=$(which vim)
# note that the space is  important, shoudl follow the space strictly as in here
if [ -e $vimDir ] 
then
	echo "vim found at: $vimDir"
else
	echo " vim not found, install vim"
	brew install vim
fi

#store command output in a variable:
zshBin=$(which zsh)
# -e varName: check if the file exists  
if [ -e $zshBin ] 
then
	echo "zsh found at:$zshBin" 
else
	echo " zsh not found, install zsh..."
	brew install zsh
fi

echo "trying to change to zsh at $zshBin..."
chsh -s $zshBin 
