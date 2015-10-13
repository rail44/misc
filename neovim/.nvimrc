call plug#begin('~/.vim/plugged')
Plug 'rust-lang/rust.vim'
Plug 'leafgarland/typescript-vim'

Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'

"Plug 'Shougo/deoplete.nvim'
Plug 'Valloric/YouCompleteMe'

Plug 'rail44/misc', {'rtp': 'base16/vim'}
"Plug '~/Repositories/misc/base16/vim'
call plug#end()

set number
set expandtab
set spelllang+=cjk
set spell
set laststatus=2
set noshowmode
set cursorline
set wildmode=list:longest

let base16colorspace=256
colorscheme base16-palette

syntax enable
filetype plugin indent on
source $VIMRUNTIME/plugin/matchit.vim

tnoremap <Esc> <C-\><C-n> 

function! lightline#tab#filename(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let buf = buflist[tabpagewinnr(a:n) - 1]
  let filepath =  bufname(buf)
  if stridx(filepath, 'term://') == 0
    return '[Term]'
  elseif strlen(filepath) == 0
    return '[No Name]'
  else
    return pathshorten(filepath)
  endif
endfunction

let g:lightline = {
\  'active': {
\    'left': [['mode', 'paste'], ['cwd']],
\    'right': [['percent'], ['lineinfo']],
\  },
\  'tab': {
\    'active': ['filename', 'modified'],
\    'inactive': ['filename', 'modified'],
\  },
\  'component': {
\    'cwd': '%{getcwd()}',
\  },
\  'tabline_subseparator': {'left': '', 'right': ''},
\}
