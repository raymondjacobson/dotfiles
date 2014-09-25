"Raymond Jacobson .vimrc
"2012

syn on
colo raymond
"line numbers
set number
set ruler
highlight LineNr ctermfg=white

"minibuf
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1
map <Tab> :bnext<cr>
map <S-Tab> :bprevious<cr>


"mouse
set mouse=a
set selectmode=mouse 

"indentations
set smartindent
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
filetype on
filetype plugin on
filetype indent on
"language specific indentation
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

"smart brackets
inoremap {  {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}
inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

"NERDTree config
let g:NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=30
nnoremap <silent> <F6> :NERDTreeToggle<cr>
map <C-L> <A-Right>
map <A-Left> <Meta-h>

"Powerline
let g:powerline_symbols = 'fancy'

"Pathogen
execute pathogen#infect()
