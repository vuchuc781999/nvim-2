" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    " Plug 'joshdick/onedark.vim'
    " Plug 'lifepillar/vim-solarized8'
    " Plug 'morhetz/gruvbox'
    Plug 'dracula/vim', {'as': 'dracula'}
    " Coc.nvim
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    "FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Sneak
    Plug 'justinmk/vim-sneak'
    " which key
    Plug 'liuchengxu/vim-which-key'
    " commenter
    Plug 'scrooloose/nerdcommenter'
    " multi cursors
    Plug 'terryma/vim-multiple-cursors'

call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
    \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \|   PlugInstall --sync | q
    \| endif
