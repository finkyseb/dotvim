"# Pas de compatibilité avec Vi (meilleur comportement)
set nocompatible

"# Encodage général
set encoding=utf-8

"# Change le <Leader> en , à la place de \
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

"# Numérotation
set number

"# Affichage de caractères spéciaux
set list
set listchars=nbsp:¬,tab:»·,trail:·

"# Affichage de la dernière ligne, même non entière
"# Affichage des caractères spéciaux sous form <hex> plutôt que ^X
set display=lastline,uhex

"# Pas de sonneries
set noerrorbells
set novisualbell

"# Limites haute et basse du curseur
set scrolloff=8

"# Limites gauche et droite du curseur
"set nowrap
set sidescrolloff=3
set sidescroll=1

"# Recherche
" Va au résultat directement
set incsearch
set ignorecase
set smartcase
" /g par défaut (remettre /g pour annuler)
set gdefault
" Surligne les résultats
set hlsearch
" et pour l'enlever : ,/
nnoremap <silent> <Leader><Space> :nohlsearch<CR>

"# Désactive les fichiers swap
set noswapfile
set nobackup
set nowritebackup

"# Correction (à activer avec set spell)
set spelllang=fr,en
set spellsuggest=5

"# Pas de repliement
set nofoldenable

"# Effacement (backspace) fonctionnel
set backspace=indent,eol,start

"# Priorité aux fichiers avec un . dans l'autocomplétion
" e.g : prog.c > prog
set suffixes+=,,

"# Méthode de cryptage (avec :X)
if version >= 704 && has("patch399")
  set cryptmethod=blowfish2
endif

"# Tilde avec motion
set tildeop

"# Demande une confirmation plutôt que de lever une erreur (:q, :e)
set confirm

"# Surligne la ligne courante
set cursorline

"# Formatte le texte en le justifiant à 72 caractères (avec gq)
set formatprg=par\ -j\ -w72

"# Autorise de changer de buffer sans sauvegarder
set hidden
