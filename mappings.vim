"# Début de ligne au premier caractère non blanc
map 0 ^

"# Remap <C-space> (= <Nul>) pour l'autocomplétion (<Tab>)
imap <Nul> <Tab>

"# Commande w!! pour enregistrer avec sudo
"cmap w!! %!sudo tee > /dev/null %
cabbrev w!! %!sudo tee > /dev/null %

"# Désactive l'accès au mode Ex
map Q <Nop>
