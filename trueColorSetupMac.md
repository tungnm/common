# 24 bit true color terminal setup


//test using the concealed texted: *concealed text*


Do the following:
* install zsh and oh-my-zsh as usual.
* copy over the .zshrc file to ~/.zshrc
* Download the latest-beta iterm2 that support true color
* Open Preference of iterm2 -> profile -> color. Click color preset and import the tomorrow-eighty theme under iterm2 sub folder and the set it 
* Install the Droid san mono theme and set it as font for iterm2 as well. The font is included in the common/MacOSSetup folder
* Install pure prompt following instruction here: https://github.com/sindresorhus/pure
* Install the latest NeoVim. Note that Neovim use ~/.config/nvim and
  ~/.config/nvim/init.vim  instead of the normal .vim and .vimrc for its
  configuration. see https://neovim.io/doc/user/vim_diff.html . For this
  reason, creaet a symlink to link these 2 to .vim and .vimrc file

```zsh
brew tap neovim/homebrew-neovim 
brew install --HEAD neovim
```    

if already install neovim then reinstall with 
```zsh 
brew reinstall neovim
```

* install patched tmux that support true color:

```zsh
brew uninstall tmux
brew install https://raw.githubusercontent.com/choppsv1/homebrew-term24/master/tmux.rb
cp .tmux.conf ~/ 
```

Install mustard theme for vim(it looks very similar to sublime text default color theme) 

```zsh 
cp mustard.vim ~/.vim/colors/
```

Install vim plug and use vim plug to install vim pencil

## Reference
https://chris.chowie.net/2015/04/19/True-colour-with-neovim-tmux-and-iterm2/
http://sts10.github.io/blog/2015/10/24/true-hex-colors-with-neovim-and-iterm2/
https://github.com/sindresorhus/pure#getting-started
https://github.com/sts10/vim-mustard 
https://github.com/junegunn/vim-plug

