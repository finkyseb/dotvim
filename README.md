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

## Personnalisation

Modifiez le fichier `~/.vim/vimrc`. Les plugins sont gérés grâce à [Vundle](https://github.com/gmarik/Vundle.vim).

## Suppression

```bash
cd ~
rm -rf .vim
rm .vimrc
```

## Liste des plugins

* [nerdtree](https://github.com/scrooloose/nerdtree)
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
* [supertab](https://github.com/ervandew/supertab)
* [vim-numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [matchit](https://github.com/tmhedberg/matchit)
* [vim-node](https://github.com/moll/vim-node)
* [vim-jade](https://github.com/digitaltoad/vim-jade)
* [mustang-vim](https://github.com/croaker/mustang-vim)
* [CamelCaseMotion](https://github.com/bkad/CamelCaseMotion)
* [vim-autoclose](https://github.com/Townk/vim-autoclose)
* [vim-endwise](https://github.com/tpope/vim-endwise)

## Licence

Distribué sous les mêmes conditions que Vim lui-même.
cf. `:help license`.
