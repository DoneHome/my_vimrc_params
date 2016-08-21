" 定义快捷键的前缀，即 <Leader>
let mapleader=";"

syntax enable
syntax on
set encoding=utf-8
set nocompatible
set backspace=2
set laststatus=2  " 总是显示状态栏
set ruler         " 显示光标当前位置
set number        " 开启行号显示
"set cursorline    " 高亮显示当前行/列
"set cursorcolumn
set hlsearch      " 高亮显示搜索结果
set incsearch     "边输入边搜索(实时搜索)"

" 自适应不同语言的智能缩进
filetype indent on

" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=4

" 设置格式化时制表符占用空格数
set shiftwidth=4

" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

"split navigations : nnoremap将一个组合快捷键映射为另一个快捷键
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" 自动补全括号
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap { {}<LEFT>

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Lokaltog/vim-powerline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'tmhedberg/SimpylFold'
call vundle#end()
filetype plugin indent on


"配色方案
"set t_Co=256
set background=dark
colorscheme default
"colorscheme solarized
"colorscheme molokai
"let g:solarized_termcolors=256
"let g:solarized_termtrans=1

"let g:Powerline_colorscheme='solarized256'

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle 


" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
"set foldlevel=99
" 启动 vim 时关闭折叠代码
set nofoldenable

"实现文件和接口文件间切换
nmap <silent> <Leader>sw :FSHere<cr>


"自动补全窗口不会消失
let g:ycm_autoclose_preview_window_after_completion=1
"转到定义
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 语法关键字补全  
let g:ycm_seed_identifiers_with_syntax=1
"回车即选中当前项"
"inoremap <expr> <CR>       pumvisible() ? '\<C-y>' : '\<CR>'


" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 设置 NERDTree 子窗口宽度
let NERDTreeWinSize=22
"文件浏览--隐藏.pyc文件
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
