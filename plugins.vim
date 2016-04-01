"# Chargement de Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"# Liste des plugins
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tmhedberg/matchit'
Plugin 'morhetz/gruvbox'
Plugin 'bkad/CamelCaseMotion'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-endwise'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-scripts/omlet.vim'
Plugin 'wesQ3/vim-windowswap'

call vundle#end()

"# Remap les mouvements normaux (w, b, e) en mouvements CamelCaseMotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

"# Mapping pour activer/désactiver vim-autoclose
nmap <silent> <Leader>a :AutoCloseToggle<CR>

"# Mapping pour ouvrir/fermer NERDTree
nmap <silent> <Leader>t :NERDTreeToggle<CR>

"# Mapping pour EasyAlign
vmap <Enter> <Plug>(EasyAlign)

"# Touches pour EasyMotion
" (par défaut : 'asdghklqwertyuiopzxcvbnmfj;')
let g:EasyMotion_keys='qsdghklazertyuiopwxcvbnmfj;'

"# Active l'indentation et les plugins spécifiques
filetype indent on
filetype plugin on
