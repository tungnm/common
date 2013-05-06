cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
cp -r .vim ~/
echo "installing command-not-found for zsh..."
sudo apt-get install command-not-found
echo "trying to change to zsh..."
chsh -s /usr/bin/zsh
echo "If no error found above, please restart to use zsh"

git config --global core.editor vim
git config --global merge.tool vimdiff
