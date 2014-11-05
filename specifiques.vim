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

"# Touche pour activer le mode paste
" (pour désactiver des comportements indésirables)
" (N'utilise pas l'option pastetoggle car
" cela crée un mapping aussi dans le mode insertion)
let g:pastemode = 0
nmap <Leader>p :call PasteToggleMode()<CR>
"noremap <Leader>, i


"# Revient à la même position à la réouverture d'un fichier
augroup DernierePosition
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END


"# Ouvre la fenêtre de quickfix après :make
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

"# Mapping pour lancer :make avec ,m
:map <Leader>m :make<CR>
