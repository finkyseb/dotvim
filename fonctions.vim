function! FileSize()
  let bytes = getfsize(expand('%:p'))
  if bytes <= 0
    return ''
  endif
  if bytes < 1024
    return bytes
  else
    return (bytes / 1024) . 'k'
  endif
endfunction


function! HunkSummary()
  if !get(g:, 'gitgutter_enabled', 0)
    return ''
  endif
  let l:summary = GitGutterGetHunkSummary()
  return '+'.l:summary[0].' ~'.l:summary[1].' -'.l:summary[2]
endfunction
