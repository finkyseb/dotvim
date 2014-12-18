# Non-ultimate vimrc

Vim est hautement configurable. Parce qu'il n'existe pas de vimrc ultime, voici le mien.

## Installation

Commencez par tout installer :
* via Curl :

```bash
curl -L https://raw.githubusercontent.com/ThibautMarty/non-ultimate-vimrc/master/install | sh
```

* via Wget :

```bash
wget --no-check-certificate https://raw.githubusercontent.com/ThibautMarty/non-ultimate-vimrc/master/install -O - | sh
```

* ou en exécutant les commandes dans le fichier [install](install).

Puis installez tous les plugins avec les commandes de la partie [Mise à jour](#user-content-mise-à-jour).

## Mise à jour

```bash
cd ~/.vim
./update
```

## Personnalisation

Modifiez le fichier `~/.vim/vimrc`. Les plugins sont gérés grâce à [Vundle](https://github.com/gmarik/Vundle.vim).

## Suppression

```bash
cd ~
rm -rf .vim .vimrc
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
* [vim-easymotion](https://github.com/Lokaltog/vim-easymotion)

## Licence

Distribué sous les mêmes conditions que Vim lui-même.
cf. `:help license`.
