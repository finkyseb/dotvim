"# Ouvrir rapidement un fichier avec dmenu
" De : http://leafo.net/posts/using_dmenu_to_open_quickly.html

" Strip the newline from the end of a string
function! Chomp(str)
  return substitute(a:str, '\n$', '', '')
endfunction

" Find a file and pass it to cmd
function! DmenuOpen(cmd)
  "let fname = Chomp(system("git lsœ-files | dmenu -i -l 20 -p " . a:cmd))
  let fname = Chomp(system("find . | dmenu -i -l 20 -p :" . a:cmd))
  if empty(fname)
    return
  endif
  execute a:cmd . " " . fname
endfunction

" Mappings
nmap <Leader>e :call DmenuOpen("e")<CR>
nmap <Leader>E :call DmenuOpen("tabe")<CR>
