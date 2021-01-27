syntax on                                   " включить подсветку синтаксиса
colorscheme elflord
set number                                  " показывать номера строк
set numberwidth=4                           " количество цифр в номерах строк
inoremap jj <Esc>                           " выход из режима Insert по jj - чтобы не тянуться к клавише Esc
set fileformat=unix
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8
set keymap=russian-jcukenwin                " что-то улучшающее работу с русскими клавишами
set iminsert=0
set imsearch=0
set ruler                                   " в подстрочнике для каждого окна будет выводится инфа о % просмотренного
set hlsearch                                " установка постоянной подстветки последнего поиска (выключается :noh)
set shiftwidth=4                            " размер индента (работает по >)
highlight lCursor guifg=NONE guibg=Cyan     
" nmap <Tab> <C-W><C-W>
nmap <Tab>l <C-W>l                          " переключение между окнами по Tab-hjkl (потому что Ctrl-W hjkl неудобно)
nmap <Tab>k <C-W>k
nmap <Tab>j <C-W>j
nmap <Tab>h <C-W>h
