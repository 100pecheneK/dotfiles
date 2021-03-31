call plug#begin('~/.config/nvim/plugged')
" Дерево файлов
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Табнайн
Plug 'zxqfl/tabnine-vim'
" Классная полоска внизу
Plug 'itchyny/lightline.vim'
" Парные скобки
Plug 'jiangmiao/auto-pairs'
" Github
Plug 'tpope/vim-fugitive'
" Поиск
Plug 'kien/ctrlp.vim'
" Colorschemes
Plug 'rakr/vim-one'
" jsx
Plug 'mxw/vim-jsx'
" Поиск
Plug 'easymotion/vim-easymotion'
" Закрытие тегов
Plug 'alvan/vim-closetag'
call plug#end()
"Сочетания клавиш
map <C-n> : :NERDTreeToggle<CR>

let g:mapleader=','
map <Leader> <Plug>(easymotion-prefix)

" Делаем линейку для отображения на какой мы строке и сколько расстояния до
" других строк в **NeoVim**
set number
set ruler

" Делаем так, чтобы навигация работала на русском языке
nmap о j
nmap л k
nmap р h
nmap д l
nmap ш i
nmap ф a
nmap в d

syntax on
colorscheme one
set background=dark

" Линия статуса: конфигурация
set noshowmode " Табличка --INSERT-- больше не выводится на экран
set laststatus=2
set t_Co=256
let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste'],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

map <F1> :set background=dark<CR> 
map <F2> :set background=light<CR>

if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


"Мои настройки"
set mouse=a
"Табуляция"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
" jsx
let g:jsx_ext_required=1
" ctrlp
let g:ctrlp_working_path_mode="../"
let g:ctrlp_custom_ignore = '\v[\/](node_modules)|(\.(swp|ico|git|svn))$'

" Отключить подсветку после нажатия на Enter
:nnoremap <CR> :nohlsearch<CR>/<BS>

" Дерево файлов справа
let g:NERDTreeWinPos = "right"

" Вкладки
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
