 syntax on

set noerrorbells
set belloff=all
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set bs=2
set spell
set splitbelow
set encoding=UTF-8

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'Valloric/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'frazrepo/vim-rainbow'
Plug 'mxw/vim-jsx'
Plug 'mhinz/vim-signify'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Theme
colorscheme gruvbox
set background=dark

" Yank to OS
if has('clipboard')
    set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

" Ripgrep
if executable('rg')
  let g:rg_derive_root='true'
endif

" fzf
let g:fzf_preview_window = 'right:60%'
let g:fzf_layout = { 'window': 'enew' }

" NERDTree
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeShowHidden=1
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if NERDTree.IsOpen() == 0 | NERDTree %:p:h | endif
autocmd VimEnter * wincmd p
" dev-icons for NERDTree
set guifont=DroidSansMono_Nerd_Font:h11

" vimraindow
let g:rainbow_active=1

" vim airline
let g:airline_powerline_fonts = 1

" vim-signify (git diff +/-) [Does this work?]
set updatetime=100

" Hotkeys
let mapleader = " "
nnoremap <leader>[ :vertical resize 30<CR>
nnoremap <leader>] :vertical resize 170<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :NERDTreeToggle<bar>:vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <Leader>pf :Files<CR>
nnoremap <silent> <Leader>= :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <leader>t :below terminal<CR> 
