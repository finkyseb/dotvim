"# Pas de compatibilité avec Vi (meilleur comportement)
set nocompatible

"# Encodage général
set encoding=utf-8

"# Chargement de Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"# Liste des plugins
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tmhedberg/matchit'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-jade'
Plugin 'croaker/mustang-vim'
Plugin 'bkad/CamelCaseMotion'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-endwise'

call vundle#end()


source ~/.vim/fonctions.vim


"# Change le <leader> en , à la place de \
let mapleader=","


"# Indentation
set autoindent
" Intelligente ({}, commentaires...)
set smartindent
" Remplace les tabulations par des espaces
set expandtab
" <BS> supprime un niveau d'indentation
set smarttab
" Affiche 2 espaces pour les tabulations
set tabstop=2
" Indentation de 2 espaces
set shiftwidth=2
" Arrondi à un niveau d'indentation
set shiftround

"# Début de ligne au premier caractère non blanc
map 0 ^

"# Remap <C-space> (= <Nul>) pour l'autocomplétion (<Tab>)
imap <Nul> <Tab>

"# Numérotation
set number

"# Affichage de caractères spéciaux
set list
set listchars=nbsp:¬,tab:»·,trail:·


"# Statusline
" Informations git (branche +-~) :
" (Vérifie que le plugin fugitive est accessible)
if filereadable($HOME.'/.vim/bundle/vim-fugitive/plugin/fugitive.vim')
  set statusline+=%{strlen(fugitive#statusline())?'\ \ ('.fugitive#statusline()[5:-3].'\ '.HunkSummary().')\ ':''}
endif
" Nom du fichier
set statusline+=%f%<
" Encodage du fichier
set statusline+=\ %{strlen(&fenc)?'<'.&fenc.'>':'<aucun>'}
" Taille du fichier
set statusline+=\ %{FileSize()}
" Drapeau modifié, read-only
set statusline+=\ %m\ %r
" Séparateur gauche droite
set statusline+=%=
" <ligne courante>/<total>:<colonne> | <pourcents>
set statusline+=%l/%L:%v\ \|\ %4P\ 
" L'affiche toujours
set laststatus=2

"# Pas de sonneries
set noerrorbells
set novisualbell

"# Limites haute et basse du curseur
set scrolloff=8

"# Limites gauche et droite du curseur
"set nowrap
set sidescrolloff=3
set sidescroll=1

" Revient à la même position à la réouverture d'un fichier
augroup DernierePosition
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END


"# Recherche
" Va au résultat directement
set incsearch
set smartcase
" Surligne les résultats
set hlsearch
" et pour l'enlever : ,/
nnoremap <silent> <Leader><Space> :nohlsearch<CR>


"# Désactive les fichiers swap
set noswapfile
set nobackup
set nowritebackup


"# Undo persistant
if has("persistent_undo")
  " Crée le dossier s'il le faut
  silent !mkdir ~/.vim/backups > /dev/null 2>&1
  set undodir=~/.vim/backups
  set undofile
endif

"# Clipboard mélangé avec celui de X
if has("xterm_clipboard")
  set clipboard=unnamedplus
endif


"# Commande w!! pour enregistrer avec sudo
"cmap w!! %!sudo tee > /dev/null %
cabbrev w!! %!sudo tee > /dev/null %

"# Correction (à activer avec set spell)
set spelllang=fr,en
set spellsuggest=5

"# Pas de repliement
set nofoldenable

"# Effacement (backspace) fonctionnel
set backspace=indent,eol,start

"# Désactive l'accès au mode Ex
map Q <Nop>

"# Remap les mouvements normaux (w, b, e) en mouvements CamelCaseMotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

"# Active l'indentation et les plugins spécifiques
filetype indent on
filetype plugin on


"# Thème
try
  colorscheme mustang
catch
endtry

"# Active la coloration syntaxique
syntax enable

"# Couleur pour GitGutter
highlight SignColumn ctermbg=232

"# Mapping pour activer/désactiver vim-autoclose
nmap <silent> <leader>a :AutoCloseToggle<CR>

"# Ouvre la fenêtre de quickfix après :make
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"# Mapping pour lancer :make avec ,m
:map <Leader>m :make<CR>
