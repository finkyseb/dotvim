# Non-ultimate vimrc

Vim est hautement configurable. Parce qu'il n'existe pas de vimrc ultime, voici le mien.

## Installation

```bash
cd ~
git clone --recursive https://github.com/ThibautMarty/non-ultimate-vimrc
cd non-ultimate-vimrc
./update
cd ..
ln -s non-ultimate-vimrc .vim
```

Si cela ne suffit pas, il faut rajouter un lien vers vimrc dans votre répertoire home :

```bash
cd ~
ln -s .vim/vimrc .vimrc
```

## Mise à jour

```bash
cd ~/non-ultimate-vimrc
./update
```

## Liste des plugins

* [pathogen.vim](https://github.com/tpope/vim-pathogen)
* [NERD Tree](https://github.com/scrooloose/nerdtree)
* [NERD Commenter](https://github.com/scrooloose/nerdcommenter)
* [supertab](http://github.com/ervandew/supertab)
* [numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle)
* [fugitive.vim](https://github.com/tpope/vim-fugitive)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [surround.vim](https://github.com/tpope/vim-surround)
* [matchit](https://github.com/tmhedberg/matchit)
* [Node.vim](https://github.com/moll/vim-node)
* [vim-jade](https://github.com/digitaltoad/vim-jade)
* [mustang (modifié)](https://github.com/croaker/mustang-vim)
* [CamelCaseMotion.vim](https://github.com/bkad/CamelCaseMotion)
* [vim-autoclose](https://github.com/Townk/vim-autoclose)
