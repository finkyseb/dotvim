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

"# Revient à la même position à la réouverture d'un fichier
augroup DernierePosition
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
augroup END

"# Ouvre la fenêtre de quickfix après :make, :grep…
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
