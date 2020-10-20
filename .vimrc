 " Ex命令自动补全采用bash方式"
 syntax on
 syntax enable 
 filetype plugin indent on

 execute pathogen#infect()

 set wildignore+=/usr/
 set wildignore+=/usr/include/

 "omnicppcomplete
 set completeopt=longest,menu
 let OmniCpp_NamespaceSearch = 2 " search namespaces in the current buffer and in included files
 let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表
 let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全
 let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全
 let OmniCpp_MayCompleteDot   = 1 " 输入 .  后自动补全
 let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
 set number
 set nocompatible
 set cursorline            
 set tw=232
 set nowrap 
 set ruler           
 set shiftwidth=4 
 set softtabstop=4         
 set tabstop=4 
 set nobackup     
 set backupcopy=yes         
 set ignorecase smartcase    
 set nowrapscan            
 set incsearch             
 set hlsearch             
 set noerrorbells         
 set novisualbell          
 set guioptions-=T           
 set guioptions-=m           
 set cmdheight=1            
"set foldenable           
"set foldmethod=indent
"set foldcolumn=0            
 set cscopequickfix=s-,c-,d-,i-,t-,e-
 set mouse=n
 set nocp 
 filetype plugin on

 " nnoremap <silent> <C-B> :TlistToggle <CR><CR>   
 ":Tlist              调用TagList
 "let Tlist_Show_One_file=1                    "不同时显示多个文件的tag，只显示当前文件的 
 "let Tlist_Exit_OnlyWindow=1                  "如果Taglist窗口是最后一个窗口则退出Vim
 "let Tlist_File_Fold_Auto_Close=1             " 自动折叠
 "let Tlist_Use_Right_Window=1
 "let Tlist_Sort_Type="name"

 if filereadable("cscope.out") 
 	cs add cscope.out 
 endif

 if has("cscope")
 	set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
        " check cscope for definition of a symbol before checking ctags:
        " set to 1 if you want the reverse search order.
 "	set csto=1


        " add any cscope database in current directory
        "if filereadable("cscope.out")
        "cs add cscope.out
        " else add the database pointed to by environment variable
        "elseif $CSCOPE_DB !=""
        "cs add $CSCOPE_DB
        "endif

        "show msg when any other cscope db added
 	set cscopeverbose

 	nmap <C-/>s:cs find s <C-R>=expand("<cword>")<CR><CR>
 endif

 map <F7> :set spell <CR>
 map <C-F7> :set nospell <CR>
 map <F3> ]s
 setlocal spell spelllang=en_us
 set nospell
 let g:indentLine_char = '|'
 set listchars=tab:\|\ 
 set list



 map <leader>da :DoxAuthor<CR>
 map <leader>df :Dox<CR>
 map <leader>db :DoxBlock<CR>
 map <leader>dc a <LEFT><LEFT><LEFT>

 let g:DoxygenToolkit_briefTag_funcName = "yes"

" for C++ style, change the '@' to '\'
" let g:DoxygenToolkit_commentType =  "C++"
" let g:DoxygenToolkit_briefTag_pre="\ brief: "
" let g:DoxygenToolkit_templateParamTag_pre = "\ tparam: "
" let g:DoxygenToolkit_paramTag_pre="\ param: "
" let g:DoxygenToolkit_returnTag   ="\ eeturns: "
" let g:DoxygenToolkit_throwTag_pre = "\ throw: " " @exception is also valid
" let g:DoxygenToolkit_fileTag = "\ file "
" let g:DoxygenToolkit_dateTag = "\ data:"
" let g:DoxygenToolkit_authorTag = "\ author:"
" let g:DoxygenToolkit_versionTag = "\ version: 1"
" let g:DoxygenToolkit_blockTag = "\ name "
" let g:DoxygenToolkit_classTag = "\ class "
  let g:DoxygenToolkit_authorName = "Yan Wang - yan.wang@desy.de"
" let g:DoxygenToolkit_licenseTag=" Copyright (C) 2018 All rights reserved"
" let g:doxygen_enhanced_color = 1
" "let g:load_doxygen_syntax = 1 

""let g:DoxygenToolkit_blockHeader="/****************************************************************************"
""let g:DoxygenToolkit_blockFooter="****************************************************************************/"

" let g:DoxygenToolkit_startCommentTag   = "/*****************************************************************************************"
" let g:DoxygenToolkit_endCommentTag     = "*****************************************************************************************/"
" let g:DoxygenToolkit_startCommentBlock = "/**************************************************************************************"
" let g:DoxygenToolkit_endCommentBlock   = "***************************************************************************************/"
" let g:DoxygenToolkit_startCommentBlock = "/ "
" let g:DoxygenToolkit_interCommentBlock = "/ "
" let g:DoxygenToolkit_endCommentBlock   = "/ "

 vmap <F6> dO#endif<Esc>PO#if 0<Esc>
 vmap <F5> dO*/<Esc>PO/*<Esc>

 map <F12> <Esc>:Dox<cr>
 map <F9>  <Esc>:DoxAuthor<cr>
 map <F10> <Esc>:DoxLic<cr>
 map <F8>  <Esc>:DoxBlock<cr>

 map <F2> gg=G 
 map <F4> <Esc>:colorscheme evening <cr>
 map <C-F4> :colorscheme normal 
