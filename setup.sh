echo "setup vim setting"
cp .vimrc ~/.vimrc
cp .zshrc ~/.zshrc
cp -r .vim ~/
echo "install Git"
sudo apt-get install git
echo "configure git global"
git config --global color.ui auto
git config --global user.name "Tung Nguyen"
git config --global user.email mtung09@gmail.com
echo "installing command-not-found for zsh..."
sudo apt-get install command-not-found
echo "install zsh..."
sudo apt-get install zsh
echo "trying to change to zsh..."
chsh -s /usr/bin/zsh
echo "If no error found above, please restart to use zsh"

git config --global core.editor vim
git config --global merge.tool vimdiff
chsh -s /bin/zsh
echo "changed to zsh shell, please log out and log in again"
