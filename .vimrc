syntax on

set belloff=all
set colorcolumn=80
set incsearch
set nobackup
set noerrorbells
set noswapfile
set nu
set scrolloff=5
set shiftwidth=4
set smartindent
set smartcase
set tabstop=4 softtabstop=4 expandtab
set undodir=~/.vim/undodir
set undofile
highlight Comment cterm=italic

call plug#begin('~/.vim/plugged')


call plug#end()

syntax enable
if has('termguicolors')
  set termguicolors
endif
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 0
let g:gruvbox_material_menu_selection_background = 'green'
let g:gruvbox_material_palette = 'material'
let g:gruvbox_material_sign_column_background = 'none'

colorscheme gruvbox-material
set background=dark

" open the preview window after entering the markdown buffer
let g:airline_theme = 'gruvbox_material'

map <C-n> :NERDTreeToggle<CR>
