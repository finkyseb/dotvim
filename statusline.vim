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
