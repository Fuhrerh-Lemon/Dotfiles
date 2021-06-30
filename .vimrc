"            _         _                    
"  _ __ ___ (_) __   _(_)_ __ ___  _ __ ___ 
" | '_ ` _ \| | \ \ / / | '_ ` _ \| '__/ __|
" | | | | | | |  \ V /| | | | | | | | | (__ 
" |_| |_| |_|_|   \_/ |_|_| |_| |_|_|  \___|
" Autor: FuhrerhLemon                                         
" 

""""""""""""""""""""""""""""""""""""""""""""
" Config base
""""""""""""""""""""""""""""""""""""""""""""
   let mapleader =","  
   set nocompatible
   set clipboard=unnamedplus
   set number relativenumber
   set encoding=UTF-8
   set incsearch
   set nobackup
   set noswapfile
   set splitbelow splitright
   set t_Co=256
   syntax enable
   let g:rehash256 = 1

""""""""""""""""""""""""""""""""""""""""""""
" Tabulador
""""""""""""""""""""""""""""""""""""""""""""
   set expandtab
   set smarttab
   set shiftwidth=3
   set tabstop=3
   set expandtab
   set autoindent
   filetype indent on

""""""""""""""""""""""""""""""""""""""""""""
" Configuración teclado
""""""""""""""""""""""""""""""""""""""""""""
   nnoremap Q !!$SHELL<CR>
   nnoremap <F1> :w<CR>
   nnoremap <F2> :q<CR>
   nnoremap <F3> :NERDTree<CR>
   nnoremap <F4> :Limelight<CR>

""""""""""""""""""""""""""""""""""""""""""""
" Función mouse
""""""""""""""""""""""""""""""""""""""""""""
   function! ToggleMouse()
       if &mouse == 'a'
           set mouse=
       else
           set mouse=a
       endif
   endfunc

call ToggleMouse()

""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
   " {{ Extra }}
      Plug 'junegunn/goyo.vim'      " { Para Concentrarse }
      Plug 'junegunn/limelight.vim' " { Iluminar código }
      Plug 'Yggdroot/indentLine'    " { Indentación }
      Plug 'tpope/vim-eunuch'       " { Comandos de Unis }
      " Plug 'haya14busa/incsearch.vim'

      " {{ Barra inferior }}
      Plug 'vim-airline/vim-airline'         " { Barra inferior }
      Plug 'vim-airline/vim-airline-themes'  " { Temas de la barra inferior }

   " {{ Barra superior }}
      " Plug 'kyazdani42/nvim-web-devicons'
      " Plug 'romgrk/barbar.nvim'

   " {{ Fzf }}
      Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
      Plug 'junegunn/fzf.vim'
      " Plug 'nvim-lua/popup.nvim'
      " Plug 'nvim-lua/plenary.nvim'         { nvim 0.5 }
      " Plug 'nvim-telescope/telescope.nvim'

   " {{ Colores, tema }}
      Plug 'ghifarit53/tokyonight-vim'
      " Plug 'romgrk/doom-one.vim'   { Tema extra }
      "Plug 'dylanaraps/wal.vim'     { Utilizando Wal }
      "plug 'frazrepo/vim-rainbow'   { Usando vulkan }
      "Plug 'ap/vim-css-color'       { Usando vulkan }

   " {{ Autocompletado }}
	   "Plug 'Valloric/YouCompleteMe'
      Plug 'nvim-lua/completion-nvim'
	   Plug 'vim-scripts/c.vim'
	   Plug 'vim-python/python-syntax'
      Plug 'sheerun/vim-polyglot'
      Plug 'jiangmiao/auto-pairs'      " { Autocompletado de '{}, ()' }
      " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
      " TypeScript
      " Plug 'Shougo/neco-syntax'  " Fuente general de auto completado

   " {{ Archivos }}
      Plug 'vifm/vifm.vim'
	   Plug 'scrooloose/nerdtree'
      Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
      Plug 'ryanoasis/vim-devicons'                   " Iconos

   " {{ Markdown, Latex }}
      Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown'} " Markdown

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""
" Tema barra y tema general
""""""""""""""""""""""""""""""""""""""""""""""   
   set termguicolors

   let g:tokyonight_style = 'storm' " OPCIONES: night, storm
   let g:tokyonight_enable_italic=1
   " let g:tokyonight_transparent_background=1
   let g:tokyonight_cursor='blue'

   colorscheme tokyonight
   let g:airline_theme='tokyonight'
   let g:airline_powerline_fonts=1
   
   " Barras superiores
   " Moverte
   nnoremap <silent>    <A-,> :BufferPrevious<CR>
   nnoremap <silent>    <A-.> :BufferNext<CR>
   " Re-orden
   nnoremap <silent>    <A-<> :BufferMovePrevious<CR>
   nnoremap <silent>    <A->> :BufferMoveNext<CR>
   " Goto buffer in position...
   nnoremap <silent>    <A-1> :BufferGoto 1<CR>
   nnoremap <silent>    <A-2> :BufferGoto 2<CR>
   nnoremap <silent>    <A-3> :BufferGoto 3<CR>
   nnoremap <silent>    <A-4> :BufferGoto 4<CR>
   nnoremap <silent>    <A-5> :BufferGoto 5<CR>
   nnoremap <silent>    <A-6> :BufferGoto 6<CR>
   nnoremap <silent>    <A-7> :BufferGoto 7<CR>
   nnoremap <silent>    <A-8> :BufferGoto 8<CR>
   nnoremap <silent>    <A-9> :BufferLast<CR>
   " Close buffer
   nnoremap <silent>    <A-c> :BufferClose<CR>
   " Wipeout buffer
   "                          :BufferWipeout<CR>
   " Close commands
   "                          :BufferCloseAllButCurrent<CR>
   "                          :BufferCloseBuffersLeft<CR>
   "                          :BufferCloseBuffersRight<CR>
   " Magic buffer-picking mode
   nnoremap <silent> <C-s>    :BufferPick<CR>
   " Sort automatically by...
   nnoremap <silent> <Space>bd :BufferOrderByDirectory<CR>
   nnoremap <silent> <Space>bl :BufferOrderByLanguage<CR>

   " Other:
   " :BarbarEnable - enables barbar (enabled by default)
   " :BarbarDisable - very bad command, should never be used

""""""""""""""""""""""""""""""""""""""""""""
" Identación
""""""""""""""""""""""""""""""""""""""""""""
   let g:indentLine_fileTypeExclude=['text', 'sh', 'help', 'terminal']
   let g:indentLine_bufNameExclude=['NERD_tree.*', 'term:.*']

   " Maps requeridos/incsearch
   map /  <Plug>(incsearch-forward)
   map ?  <Plug>(incsearch-backward)

   " Quitar resaltado luego de buscar
   let g:incsearch#auto_nohlsearch = 1

""""""""""""""""""""""""""""""""""""""""""""
"Fzf
""""""""""""""""""""""""""""""""""""""""""""
   " Ejecutar comandos con alt-enter :Commands
   let g:fzf_commands_expect = 'alt-enter'
   " Guardar historial de búsquedas
   let g:fzf_history_dir = '~/.local/share/fzf-history'

   " Empezar a buscar presionando Ctrl + p
   nnoremap <C-p> :Files<CR>

   nnoremap <leader>ff <cmd>Telescope find_files<cr>
   nnoremap <leader>fg <cmd>Telescope live_grep<cr>
   nnoremap <leader>fb <cmd>Telescope buffers<cr>
   nnoremap <leader>fh <cmd>Telescope help_tags<cr>

""""""""""""""""""""""""""""""""""""""""""""
" Autocompletado
""""""""""""""""""""""""""""""""""""""""""""
   let g:python_highlight_all=1     " Python
   " Activar deoplete al iniciar Neovim
   let g:deoplete#enable_at_startup=1

   " Cerrar automaticamente la ventana de vista previa
   augroup deopleteCompleteDoneAu
      autocmd!
      autocmd CompleteDone * silent! pclose!
   augroup END

""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
""""""""""""""""""""""""""""""""""""""""""""
   map <C-n> :NERDTreeToggle<CR>
   let g:NERDTreeDirArrowExpandable='►'
   let g:NERDTreeDirArrowCollapsible='▼'
   let NERDTreeShowLineNumbers=1
   let NERDTreeShowHidden=1
   let NERDTreeMinimalUI=1
   let g:NERDTreeWinSize=38

""""""""""""""""""""""""""""""""""""""""""""
" Vifm
""""""""""""""""""""""""""""""""""""""""""""
   map <Leader>vv :Vifm<CR>
   map <Leader>vs :VsplitVifm<CR>
   map <Leader>sp :SplitVifm<CR>
   map <Leader>dv :DiffVifm<CR>
   map <Leader>tv :TabVifm<CR>

""""""""""""""""""""""""""""""""""""""""""""
" Markdown
""""""""""""""""""""""""""""""""""""""""""""
   let g:instant_markdown_autostart = 0
   let g:instant_markdown_browser = "surf"
   map <Leader>md :InstantMarkdownPreview<CR>
   map <Leader>ms :InstantMarkdownStop<CR>

""""""""""""""""""""""""""""""""""""""""""""
" VimWiki
""""""""""""""""""""""""""""""""""""""""""""
   let g:vimwiki_list = [{'path': '~/vimwiki/',
                        \ 'syntax': 'markdown', 'ext': '.md'}]

""""""""""""""""""""""""""""""""""""""""""""
" Goyo
""""""""""""""""""""""""""""""""""""""""""""
   map <leader>gy :Goyo<CR>
   "autocmd! User GoyoEnter Limelight

""""""""""""""""""""""""""""""""""""""""""""
" LimeLight
""""""""""""""""""""""""""""""""""""""""""""
   let g:limelight_conceal_ctermfg='gray'
   let g:limelight_conceal_ctermfg=240
   " Default: 0.5
   let g:limelight_default_coefficient=0.7
   let g:limelight_paragraph_span=1
   let g:limelight_bop='^\s'
   let g:limelight_eop='\ze\n^\s'
   let g:limelight_priority = -1

""""""""""""""""""""""""""""""""""""""""""""
" Terminal
""""""""""""""""""""""""""""""""""""""""""""
   map <Leader>tt :vnew term://fish<CR>

""""""""""""""""""""""""""""""""""""""""""""
" ColorSchema lightline
""""""""""""""""""""""""""""""""""""""""""""
   let g:lightline = {
         \ 'colorscheme': 'tokyonight',
         \ 'active': {
         \   'left': [ [ 'mode', 'paste' ],
         \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
         \ },
         \ }

"""""""""""""""""""""""""""""""""""""""""""""
" Colores
"""""""""""""""""""""""""""""""""""""""""""""
   highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
   highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
   highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
   highlight Statement        ctermfg=2    ctermbg=none    cterm=none
   highlight Directory        ctermfg=4    ctermbg=none    cterm=none
   highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
   highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
   highlight NERDTreeClosable ctermfg=2
   highlight NERDTreeOpenable ctermfg=8
   highlight Comment          ctermfg=4    ctermbg=none    cterm=italic
   highlight Constant         ctermfg=12   ctermbg=none    cterm=none
   highlight Special          ctermfg=4    ctermbg=none    cterm=none
   highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
   highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
   highlight String           ctermfg=12   ctermbg=none    cterm=none
   highlight Number           ctermfg=1    ctermbg=none    cterm=none
   highlight Function         ctermfg=1    ctermbg=none    cterm=none
