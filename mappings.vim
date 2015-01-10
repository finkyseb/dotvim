"# Début de ligne au premier caractère non blanc
map 0 ^

"# Remap <C-space> (= <Nul>) pour l'autocomplétion (<Tab>)
imap <Nul> <Tab>

"# Commande w!! pour enregistrer avec sudo
"cmap w!! %!sudo tee > /dev/null %
cabbrev w!! %!sudo tee > /dev/null %

"# Désactive l'accès au mode Ex
map Q <Nop>

"# Touche pour activer le mode paste
" (pour désactiver des comportements indésirables)
" (N'utilise pas l'option pastetoggle car
" cela crée un mapping aussi dans le mode insertion)
let g:pastemode = 0
nmap <Leader>p :call PasteToggleMode()<CR>

"# Mapping pour lancer :make avec ,m
map <Leader>m :make<CR>

"# Mapping pour activer/désactiver l'affichage "visuel"
" des caracètres spéciaux (e.g : tabulation)
nmap <Leader>l :set list!<CR>

"# Mapping pour enlever tous les espaces de fin de ligne
nmap <Leader>s :%s/\s\+$//e<CR>
