"测试测试
call pathogen#runtime_append_all_bundles()


" 设置编码自动识别, 中文引号显示  
"set fileencodings=utf-8,cp936,big5,euc-jp,euc-kr,latin1,ucs-bom  
set fileencodings=utf-8,gbk  

let g:pydiction_location='~/.vim/after/plugin/complete-dict' "pydiction 自动补全插件使用 complete-dict的路径
set tabstop=4 "编辑时一个TAB字符占多少个空格的位置。
set shiftwidth=4 "使用每层缩进的空格数。
set expandtab "是否将输入的TAB自动展开成空格。开启后要输入TAB，需要Ctrl-V<TAB> (no)expandtab
set ambiwidth=double "这一堆是语法缩进的设置 
set smartindent "基于autoindent的一些改进
set smarttab "开启时，在行首按TAB将加入sw个空格，否则加入ts个空格
set softtabstop=4 "方便在开启了et后使用退格（backspace）键，每次退格将删除X个空格
"set backspace=2  "还没弄清楚具体作用,暂时注释了看有什么影响
syntax enable "开启语法高亮

"F5 直接执行文件
map <F5> :w<CR>:!/usr/local/bin/python %


set completeopt=longest,menu "自动补全的设置 即简单地补全到文档中已有的词，快捷键为 Ctrl-N 或 Ctrl-P。
set wildmenu
autocmd FileType python set omnifunc=pythoncomplete#Complete

"set ruler "显示当前的行号列号

set ruler
"在状态栏显示正在输入的命令
set showcmd
 

"显示行号：
set number
"为方便复制，用<F2>开启/关闭行号显示:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
"MRU 打开最近打开过的文件 https://code.google.com/p/gracecode/
nnoremap <F9> :MRU<CR>
"MRU_Filter_Not_Exists

"为深色背景调整配色
"set background=dark

autocmd FileType python setlocal foldmethod=indent
"默认展开所有代码
set foldlevel=99

" 禁止PyFlakes使用QuickFix，这样在按下<F7>时会调用flake8，而有对于代码编辑时的错误仍能得到有效的提示
let g:pyflakes_use_quickfix = 0
 
" 如有需要，可设置忽略部分错误
"let g:flake8_ignore="E501"



"TagList
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"WinManager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

" 启用鼠标  
set mouse=a
" 当鼠标滚动的时候，鼠标一直在倒数第三行的位置 
set scrolloff=3 


"Grep
nnoremap <silent> <F3> :Grep<CR>
