# Vim-Settings
The repository contains vim settings in folders and files:
- `.vimrc`: vim settings
- `.vim`: directory containing vim plugins
 
These files should stay in your `$HOME` or `~/` directory

# Installation
[Vundle](https://github.com/VundleVim/Vundle.vim)
```bash
# download vundle into ~/.vim/bundle on your machine
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Replace current vim settings with this repo settings (`.vimrc`, `.vim/`)
```bash
# Note: this will override your current vim settings
cp ./.vim* $HOME/
