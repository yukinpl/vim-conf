set number
"set numberwidth=4
set filetype=vim
set fileformat=dos
set fileformats=dos,unix,mac

set langmenu=en
set helplang=en

set autoindent
set smartindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4

set hlsearch

set ruler
set nocompatible
set visualbell

set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,euc-kr

set showmatch
set wmnu
set laststatus=2

set backspace=indent,eol,start


if has("gui_running")

	set lines=50
	set columns=100

    if has( "gui_win32" ) || has( "gui_win32s" )
        set guifont=Ubuntu\ Mono:h12
    elseif has( "gui_gtk" ) || has( "gui_gtk2" ) || has( "gui_gtk3" )
        set guifont=Ubuntu\ Mono\ 12
    endif

endif


if $TERM == "xterm-256color"

set t_Co=256

endif



nmap <C-S> <ESC>:w<CR>
nmap <C-T> <ESC>:tabnew<CR>
nmap <C-,> <ESC>:tabprev<CR>
nmap <C-.> <ESC>:tabnext<CR>
nmap <C-B> <ESC>:buffers<CR>

cmap <C-S> <ESC>:w<CR>
cmap <C-T> <ESC>:tabnew<CR>
cmap <C-,> <ESC>:tabprev<CR>
cmap <C-.> <ESC>:tabnext<CR>
cmap <C-B> <ESC>:buffers<CR>

imap <C-S> <ESC>:w<CR>li
imap <C-T> <ESC>:tabnew<CR>
imap <C-,> <ESC>:tabprev<CR>
imap <C-.> <ESC>:tabnext<CR>
imap <C-B> <ESC>:buffers<CR>


syntax on
filetype indent on

function! HLSearch()
	if &hls
		return 'H'
	else
		return ' '
	endif
endfunction

function! HasBOM()
	if &bomb
		return 'BOM-O'
	else 
		return 'BOM-X'
	endif
endfunction


set statusline=
set statusline+=%1*\ %n\                                  "buffer number
set statusline+=%2*\ %<%F\                                "filename
set statusline+=%3*\ %y\                                  "file type
set statusline+=%4*\ %{&fenc!=''?&fenc:&enc}\             "encoding
set statusline+=%5*\ %{HasBOM()}\                         "encoding2
set statusline+=%6*\ %{&ff}\                              "fileFormat
set statusline+=%7*\ %{&spelllang}\                       "language
set statusline+=%8*\ %{HLSearch()}\                       "highlight search mode
set statusline+=%9*\ %=\ row:%l/%L\ (%03p%%)\             "row number
set statusline+=%9*\ col:%03c\                            "column
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "status - can be modified/readonly


if &t_Co > 255

colorscheme default

endif


if has("gui_running")

highlight User1         guifg=#000000 guibg=#f4d03f
highlight User2         guifg=#f4d03f guibg=#273746
highlight User3         guifg=#000000 guibg=#f4d03f
highlight User4         guifg=#000000 guibg=#2ecc71
highlight User5         guifg=#000000 guibg=#ec7063
highlight User6         guifg=#000000 guibg=#f4d03f
highlight User7         guifg=#000000 guibg=#2ecc71
highlight User8         guifg=#000000 guibg=#a569bd
highlight User9         guifg=#f4d03f guibg=#273746

endif


if &t_Co > 255

highlight User1         ctermfg=232   ctermbg=228
highlight User2         ctermfg=227   ctermbg=235
highlight User3         ctermfg=232   ctermbg=228
highlight User4         ctermfg=232   ctermbg=84
highlight User5         ctermfg=195   ctermbg=198
highlight User6         ctermfg=232   ctermbg=228
highlight User7         ctermfg=232   ctermbg=84
highlight User8         ctermfg=195   ctermbg=93
highlight User9         ctermfg=227   ctermbg=235

endif


if has("gui_running")


highlight DanielBlue    guifg=#2980b9 guibg=#000000
highlight DanielGreen   guifg=#27ae60 guibg=#000000
highlight DanielYellow  guifg=#d8ce5b guibg=#000000

syntax keyword cppKeyword bool
highlight link cppKeyword DanielGreen

syntax keyword cppStatement using
highlight link cppStatement DanielBlue

match DanielYellow /return/


" BEGIN 

" Normal
highlight Normal        guifg=#999999 guibg=#000000

" Line number of VIM ( left of screen )
highlight LineNr        guifg=#444444 guibg=#000000

" comment     ----> any comment
highlight Comment       guifg=#666666 guibg=#000000

" statusline
highlight StatusLine    guifg=#2980b9 guibg=#111111

highlight StatusLineNC  guifg=#2980b9 guibg=#111111

" nonText
highlight NonText       guifg=#666666 guibg=#000000

"highlight Cursor        guibg=#666666
highlight Cursor        guibg=#ff336e

"visual block/mode
highlight Visual        guibg=#fdedec
" END





" BEGIN IDENTIFIER

" identifier   ----> any variable name
highlight Identifier     guifg=#aaaaaa guibg=#000000

" function     ----> function name
highlight Function       guifg=#cccccc guibg=#000000

" tag          ----> CTRL
highlight Tag            guifg=#ff3363 guibg=#000000

" END   IDENTIFIER





" BEGIN PreProc

" include      ----> #include
highlight Include        guifg=#cccccc guibg=#000000
 
" define       ----> #define
highlight Define         guifg=#cccccc guibg=#000000

" Macro        ----> same with above
highlight Macro          guifg=#cccccc guibg=#000000

" PreCondit    ----> #if , #endif , #else
highlight Precondit      guifg=#cccccc guibg=#000000

" END   PreProc




" BEGIN TYPE

" type         ----> int , long , char , etc.
highlight Type           guifg=#27ae60 guibg=#000000

" StorageClass ----> static, register, volatile, ...
highlight StorageClass   guifg=#2980b9 guibg=#000000

" Structure    ----> struct , unionn , enum
highlight Structure      guifg=#2980b9 guibg=#000000

" typedef      ----> typedef
highlight Typedef        guifg=#68d68d guibg=#000000

" END   TYPE



" BEGIN CONSTANT

" Character    ----> a character constant : 'a' , 'S' , '\n'
highlight Character      guifg=#ff336e guibg=#000000

" SpeicalChar  ----> speical character in a constant
highlight SpeicialChar   guifg=#f4d03f guibg=#000000

" string       ----> constant "this is a string"
highlight String         guifg=#ec7063 guibg=#000000

" number       ----> a number constant : 123 , 0xFF
highlight Number         guifg=#eb9842 guibg=#000000

" Boolean      ----> true , false , TRUE , FALSE 
highlight Boolean        guifg=#2980b9 guibg=#000000

" Float        ----> 3.14159265359  3.3e10
highlight Float          guifg=#eb9842 guibg=#000000

" END CONSTANT





" BEGIN STATEMENT

" Statement    ---->
highlight Statement      guifg=#999999 guibg=#000000

" Conditional  ----> if , elseif , else 
highlight Conditional    guifg=#2980b9 guibg=#000000

" Repeat       ----> for , do , while
highlight Repeat         guifg=#2980b9 guibg=#000000
 
" Label        ----> case , default , etc
highlight Label          guifg=#f4d03f guibg=#000000

" Keyword
highlight Keyword        guifg=#f4d03f guibg=#000000

" operator     ----> sizeof , '+' , '*' , etc.
highlight Operator       guifg=#344952 guibg=#000000

" Exception    ----> try , catch , throw
highlight Exception      guifg=#ff336e guibg=#000000

" END  STATEMENT



" BEGIN DIFF

" added line
highlight DiffAdd        guibg=#222222

" changed line
highlight DiffChange     guibg=#222222

" delete characters
highlight DiffDelete     guifg=#f4d03f guibg=#444444

" different text
highlight DiffText       guifg=#f4d03f guibg=#444444

" END DIFF


endif





if &t_Co > 255

highlight Normal        ctermfg=246   ctermbg=232
highlight LineNr        ctermfg=238   ctermbg=232
highlight Comment       ctermfg=241   ctermbg=232
highlight StatusLine    ctermfg=33    ctermbg=225
highlight StatusLineNC  ctermfg=33    ctermbg=225
highlight NonText       ctermfg=241   ctermbg=232
highlight Cursor                      ctermbg=162
highlight Visual                      ctermbg=225

highlight Identifier    ctermfg=247   ctermbg=232
highlight Function      ctermfg=251   ctermbg=232
highlight Tag           ctermfg=198   ctermbg=232

highlight Include       ctermfg=251   ctermbg=232
highlight Define        ctermfg=251   ctermbg=232
highlight Macro         ctermfg=251   ctermbg=232
highlight Precondit     ctermfg=251   ctermbg=232

highlight Type          ctermfg=76    ctermbg=232
highlight StorageClass  ctermfg=33    ctermbg=232
highlight Structure     ctermfg=33    ctermbg=232
highlight Typedef       ctermfg=114   ctermbg=232

highlight Character     ctermfg=162   ctermbg=232
highlight SpeicialChar  ctermfg=220   ctermbg=232
highlight String        ctermfg=162	  ctermbg=232
highlight Number        ctermfg=172   ctermbg=232
highlight Float         ctermfg=172   ctermbg=232
highlight Boolean       ctermfg=26    ctermbg=232

highlight Statement     ctermfg=246   ctermbg=232
highlight Conditional   ctermfg=26    ctermbg=232
highlight Repeat        ctermfg=26    ctermbg=232

highlight Label         ctermfg=227   ctermbg=232
highlight Keyword       ctermfg=227   ctermbg=232
highlight Operator      ctermfg=239   ctermbg=232
highlight Exception     ctermfg=204   ctermbg=232

endif
