"                                           _
"       ___ _ __   __ _  ___ ___     __   _(_)_ __ ___
"      / __| -_ \ / _- |/ __/ _ \____\ \ / / | -_ - _ \
"      \__ \ |_) | (_| | (_|  __/_____\ V /| | | | | | |
"      |___/ .__/ \__._|\___\___|      \_/ |_|_| |_| |_|
"          |_|
"
"   You can customize spacevim with .spacevim
"   and don't have to take care of this file.
"
"   Author: Liu-Cheng Xu <xuliuchengxlc@gmail.com>
"   URL: https://github.com/liuchengxu/space-vim
"
"   Copyright (C) 2016 Liu-Cheng Xu

scriptencoding utf-8

" Identify platform {
let g:MAC = has('macunix')
let g:LINUX = has('unix') && !has('macunix') && !has('win32unix')
let g:WINDOWS = has('win32') || has('win64')
" }

" Windows Compatible {
" On Windows, also use '.vim' instead of 'vimfiles'; this makes synchronization
" across (heterogeneous) systems easier.
if g:WINDOWS
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
endif
" }

silent function! Source(file)
    if filereadable(expand(a:file))
        execute 'source ' . fnameescape(a:file)
    else
        echom '[space-vim] ' . a:file . ' does not exist, which may cause unexpected errors.'
    endif
endfunction

let g:spacevim_dir = $HOME.'/.space-vim'
let g:spacevim_core_dir = '/core'
let g:spacevim_version = '0.5.0'

call Source(g:spacevim_dir . g:spacevim_core_dir . '/core_config.vim')


call LayersBegin()

" Default layers

Layer 'fzf'
Layer 'unite'
Layer 'better-defaults'
Layer 'lightline'
Layer 'auto-completion'
Layer 'markdown'
Layer 'python'
Layer 'syntax-checking'
Layer 'text-align'
Layer 'programming'
Layer 'git'
Layer 'github'
"Layer 'leader-guide'
Layer 'goyo'
Layer 'emoji'
Layer 'polyglot'

Plug 'hecal3/vim-leader-guide'

call LayersEnd()

