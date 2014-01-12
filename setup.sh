echo "setup vim setting"
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
cp -r .vim ~/

echo "configure git global"
git config --global color.ui auto
git config --global core.editor vim
git config --global merge.tool vimdiff

echo "installing command-not-found for zsh..."
sudo apt-get install command-not-found

#store command output in a variable:
zshBin=$(which zsh)
# -z varName which check if the string varName is empty
if [ -z zshBin ]; then
	echo " zsh not found, install zsh..."
	sudo apt-get install zsh
fi

echo "trying to change to zsh at $zshBin..."
chsh -s $zshBin 
echo "If no error found above, please log out and relogin to use zsh"
