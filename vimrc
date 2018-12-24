set nocompatible              " be iMproved, required
filetype off                  " required

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Yggdroot/indentLine'

Plugin 'jiangmiao/auto-pairs'
Plugin 'tell-k/vim-autopep8'

Plugin 'bling/vim-airline'


Plugin 'The-NERD-tree'

" 安装插件写在这之前
call vundle#end()            " required
filetype plugin on    " required

" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可

" h: vundle         - 获取帮助

" vundle的配置到此结束，下面是你自己的配置

"------------------------------------------------------
"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {<CR>}<Esc>O
"autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap } <c-r>=CloseBracket()<CR>
"inoremap " <c-r>=QuoteDelim('"')<CR>
"inoremap ' <c-r>=QuoteDelim("'")<CR>
"
"function ClosePair(char)
" if getline('.')[col('.') - 1] == a:char
" return "\<Right>"
" else
" return a:char
" endif
"endf
"
"function CloseBracket()
" if match(getline(line('.') + 1), '\s*}') < 0
" return "\<CR>}"
" else
" return "\<Esc>j0f}a"
" endif
"endf
"
"function QuoteDelim(char)
" let line = getline('.')
" let col = col('.')
" if line[col - 2] == "\\"
" return a:char
" elseif line[col - 1] == a:char
" return "\<Right>"
" else
" return a:char.a:char."\<Esc>i"
" endif
"endf

"---------------------  
" 插件设置
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" NERDTree config
 map <F2> :NERDTreeToggle<CR>
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
let NERDTreeWinSize=25
autocmd VimEnter * NERDTree



"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1
"--------------------------------"
syntax on
set ts=4  "(注：ts是tabstop的缩写，设TAB宽4个空格)
set expandtab
set nu!                                    "显示行号
set smartindent                             "（cindent是特别针对 C语言语法自动缩进）
set shiftwidth =4 "设置当行之间交错时使用4个空格
