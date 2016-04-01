"# Active la coloration syntaxique
syntax enable

"# Mode sombre
set background=dark

"# Thème
try
  colorscheme gruvbox
catch
endtry

"# Couleurs des mots mal écrits (exmaple)
highlight clear SpellBad
highlight SpellBad cterm=underline ctermfg=red
highlight clear SpellCap
highlight SpellCap cterm=underline ctermfg=blue
highlight clear SpellLocal
highlight SpellLocal cterm=underline ctermfg=blue
highlight clear SpellRare
highlight SpellRare cterm=underline ctermfg=blue

"# Couleur pour GitGutter
"highlight clear SignColumn
"highlight SignColumn ctermbg=235

"# Pas de soulignement sous la ligne courante
highlight CursorLine cterm=none
