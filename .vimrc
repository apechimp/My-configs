call pathogen#infect()
set nocompatible
set autoindent
set smartindent
set ts=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nonumber

"" see :h fo-table
set tw=79
set formatoptions=tcroqn1
"Enable spell checking
set spelllang=en_us
set spellfile=~/.vim/en.utf-8.add
highlight clear SpellBad
highlight clear SpellRare
highlight clear SpellLocal
highlight clear SpellCap
highlight SpellBad   gui=undercurl cterm=underline ctermfg=red    guisp=red
highlight SpellRare  gui=undercurl cterm=underline ctermfg=red    guisp=orange
highlight SpellLocal gui=undercurl cterm=underline ctermfg=blue   guisp=blue
highlight SpellCap   gui=undercurl cterm=underline ctermfg=yellow guisp=Yellow
 
syntax enable
set background=dark
set ruler
set grepprg=grep\ -nH\ $*

"" vim-latex settings
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_ViewRule_pdf='apvlv'
let g:Tex_Folding=0
let g:Tex_MultipleCompileFormats='pdf'
autocmd FileType tex set spell

filetype plugin on
syntax on
filetype plugin indent on
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python setlocal ts=4 softtabstop=4 shiftwidth=4

"" Show hidden files
let NERDTreeShowHidden=1

"" Set spell for git commits
au BufNewFile,BufRead COMMIT_EDITMSG setlocal spell

" Detect over-80col
highlight OverLength ctermbg=red ctermfg=white guibg=red
match OverLength /\%81v.\+/

" Show 80 col
set colorcolumn=80
highlight ColorColumn ctermbg=black guibg=black

"" clear the ctrl p cache
map <leader>cp :ClearCtrlPCache<CR>

"" Show nerdtree
map <leader>n :NERDTree<CR>
