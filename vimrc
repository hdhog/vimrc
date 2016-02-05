if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
"---------------------------------------------------------------
set nocompatible              " be iMproved, required
call plug#begin('~/.vim/plugged')
"---------=== Code/project navigation ===-------------
Plug 'scrooloose/nerdtree' 	    	" Project and file navigation
Plug 'majutsushi/tagbar'          	" Class/module browser

"------------------=== Other ===----------------------
Plug 'vim-airline/vim-airline'   	    	" Lean & mean status/tabline for vim
Plug 'vim-airline/vim-airline-themes'
Plug 'fisadev/FixedTaskList.vim'  	" Pending tasks list
Plug 'rosenfeld/conque-term'      	" Consoles as buffers
Plug 'tpope/vim-surround'	   	" Parentheses, brackets, quotes, XML tags, and more
Plug 'scrooloose/nerdcommenter'	" Nerd comment
"--------------=== Snippets support ===---------------
Plug 'garbas/vim-snipmate'		" Snippets manager
Plug 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
Plug 'tomtom/tlib_vim'		" dependencies #2
Plug 'honza/vim-snippets'		" snippets repo

"---------------=== Languages support ===-------------
" --- Python ---
Plug 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plug 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete Plug
Plug 'mitsuhiko/vim-jinja'		" Jinja support for vim
Plug 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
Plug 'fatih/vim-go'
Plug 'amiorin/vim-project'
" -----------------------------
Plug 'Valloric/YouCompleteMe'
" -- yaml
Plug 'chase/vim-ansible-yaml'
" -- Python
Plug 'SirVer/ultisnips'
Plug 'Valloric/MatchTagAlways'
"---------------=== Theme ===-------------------------
Plug 'w0ng/vim-hybrid'
call plug#end()
colorscheme hybrid  " Цветовая тема
set background=dark
set numberwidth=1              " Keep line numbers small if it's shown
syntax on 		" Подсветка синтаксиса
filetype on 		" Настройки для типов файлов
filetype plugin on 	" Типы файлов
filetype indent on 	" отпусты по типу файлов
set fo+=cr 		" Что то с Enter при вызове меню
set wrap 		" (no)wrap - динамический (не)перенос длинных строк
set linebreak 		" переносить целые слова
set cin			" Отступы в стиле С
set lz			" Ленивая перерисовка экрана
set autoindent 		" автоматический отступ
set autoread 		" перечитывать изменённые файлы автоматически
set backspace=indent,eol,start whichwrap+=<,>,[,] "Удобное поведение backspace
set ch=1                " Сделать строку команд высотой в одну строку
set completeopt=menu 	" только доступные варианты автодополнени 		" не использовать свап файл для сброса буферовя
set foldcolumn=3 	" Колоночка, чтобы показывать плюсики для скрытия блоков кода:
set foldenable 		" Включить сворачивание блоков кода
set foldlevelstart=100  " Первые 100 блоков будет развернуты остальные свернуты
set foldmethod=indent 	" Тип сворачивания. по отступам
set hlsearch   		" Включаем подсветку выражения, которое ищется в тексте
set ignorecase 		" Игнорировать регистр букв при поиске
set incsearch           " Поиск по набору текста (очень полезная функция)
set incsearch  		" При поиске перескакивать на найденный текст в процессе набора строки
set laststatus=2        " Всегда отображать статусную строку для каждого окна
set linebreak 		" Перенос целых сло Перенос целых словв
set mouse=a 		" Поодержка мыши при работе в терминале
set nobackup 		" Вырубаем .swp и ~ (резервные) файлы
set nocompatible        " Включаем несовместимость настроек с Vi (ибо Vi нам и не понадобится).
set noswapfile 		" не использовать свап файл для сброса буферов
set hidden 		" не выгружать буфер когда переключаешься на другой
set novisualbell        " Выключаем надоедливый "звонок" (моргает, а не бибикает при ошибках)
set nowrapscan 		" Останавливать поиск при достижении конца файла
set nu 			" Нумерация строк
set ruler             	" Показывать положение курсора всё время.
set sessionoptions=curdir,buffers,tabpages                      " Опции сессий
set shiftwidth=8 	" размер отступов (нажатие на << или >>)
set showcmd 		" Показывать незавершенные команды в статус баре
set showmatch 		" показывать первую парную скобку после ввода второй
set showtabline=1
set smartindent 	" Умные отступы
set smarttab
set splitbelow
set title 		" показывать имя буфера в заголовке терминала
set whichwrap=b,<,>,[,],l,h " перемещать курсор на следующую строку при нажатии на клавиши вправо-влево и пр.
set t_Co=256 		" использовать больше цветов в терминале
set matchpairs+=<:> 	" показывать совпадающие скобки для HTML-тегов
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P
set ttyfast
set undolevels=2048 " хранить историю изменений числом N
set wildmode=longest,list,full
set wildmenu
"Проблема красного на красном при spellchecking-е решается такой строкой в .vimrc
highlight SpellBad ctermfg=Black ctermbg=Red
set completeopt-=preview
set completeopt+=longest
set mps-=[:]

" Для указанных типов файлов отключает замену табов пробелами и меняет ширину отступа
au FileType crontab,fstab,make set noexpandtab tabstop=8 shiftwidth=8

"НАСТРОЙКИ ВНЕШНЕГО ВИДА
" Установка шрифта (для Windows и Linux)
" настройка внешнего вида для GUI
if has('gui')
	set guioptions-=e
	set guioptions-=T
	set guioptions-=m
	set guioptions-=r
	set guioptions-=L
 	colorscheme hybrid

	if has('win32')
        	set guifont=Lucida_Console:h10:cRUSSIAN::
	else
        	set guifont=Hack
	endif
endif

"" Автоматически перечитывать конфигурацию VIM после сохранения
autocmd! bufwritepost $MYVIMRC source $MYVIMRC
hi StatusLine gui=reverse cterm=reverse
let c_syntax_for_h="" 			" присваивался тип c, а не cpp.
let g:pymode_rope_complete_on_dot = 0
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
set iskeyword+=.

"ВКЛЮЧЕНИЕ АВТОДОПЛНЕНИЯ ВВОДА (omnifunct)
au! FileType python set omnifunc=pythoncomplete#Complete
au! FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au! FileType html set omnifunc=htmlcomplete#CompleteTags
au! FileType css set omnifunc=csscomplete#CompleteCSS
au! FileType xml set omnifunc=xmlcomplete#CompleteTags
au! FileType php set omnifunc=phpcomplete#CompletePHP
au! FileType c set omnifunc=ccomplete#Complete
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'tmpl' : 1,
    \}
" Некоторые настройки для плагина TagList

let Tlist_Show_One_File 		= 1 " показывать информацию только по одному файлу
let Tlist_GainFocus_On_ToggleOpen 	= 1 " получать фокус при открытии
let Tlist_Compact_Format 		= 1
let Tlist_Close_On_Select 		= 0 " не закрывать окно  после выбора тега
let Tlist_Auto_Highlight_Tag 		= 1 " подсвечивать тег, на  котором сейчас находимся
let Tlist_Compact_Format 		= 1
let Tlist_Enable_Fold_Column 		= 0
let Tlist_Exit_OnlyWindow 		= 0
let Tlist_WinWidth 			= 25
let Tlist_Use_Right_Window 		= 0
let Tlist_GainFocus_On_ToggleOpen 	= 1
let Tlist_Display_Tag_Scope 		= 1
let Tlist_Process_File_Always 		= 1

let g:tagbar_left = 1
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0 "tagbar shows tags in order of they created in file
let g:tagbar_foldlevel = 0 "close tagbar folds by default
" Airline
let g:enable_bold_font = 1
let g:Powerline_symbols = 'fancy'
let g:airline_theme = 'hybrid'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
" ----------------
"let g:ConqueTerm_ToggleKey = '<F8>'
" ----------------
let g:project_enable_welcome = 0
let g:project_use_nerdtree = 1
call project#rc("~/development")
" Более привычные Page Up/Down, когда курсор остаётся в той же строке,
" а не переносится вверх/вниз экрана, как при стандартном PgUp/PgDown.
" Поскольку по умолчанию прокрутка по C-U/D происходит на полэкрана,
" привязка делается к двойному нажатию этих комбинаций.
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>

nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>
" Вставка по shift insert
map <S-Insert> <MiddleMouse>

" C(trl)+d - дублирование текущей строки
imap <C-d> <esc>yypi

" C-c and C-v - Copy/Paste в глобальный клипборд
vmap <C-C> "+yi
imap <C-V> <esc>"+gPi

" Сохранить файл
nmap <F4> :w!<CR>
imap <F4> <Esc>:w!<CR>
vmap <F4> <Esc>:w!<CR>

" C-y - удаление текущей строки
nmap <C-y> dd
imap <C-y> <esc>ddi

" Закрыть VIM
nmap <F5> :qa!<CR>
imap <F5> <Esc>:qa!<CR>
vmap <F5> <Esc>:qa!<CR>

" Открытие\закрытие новой вкладки
imap <C-t>t <Esc>:tabnew<CR>a
nmap <C-t>t :tabnew<CR>

" Запуск/сокрытие плагина Tag List
map <F2> :TagbarToggle<CR>
imap <F2> <Esc>:TagbarToggle<CR>
vmap <F2> <Esc>:TagbarToggle<CR>
map <F3> :NERDTreeToggle<CR>
imap <F3> :NERDTreeToggle<CR>
vmap <F3> :NERDTreeToggle<CR>
" Кооментирование кода
nmap <C-_> \c<space>
imap <C-_> \c<space>
vmap <C-_> \c<space>

"Переключение табов
"@map <S-Tab> gt
"imap <S-Tab> <Esc> gt
" tab navigation like firefox
"nnoremap <C-S-tab> :tabprevious<CR>
"nnoremap <C-tab>   :tabnext<CR>
"nnoremap <C-t>     :tabnew<CR>
"inoremap <C-S-tab> <Esc>:tabprevious<CR>i
"inoremap <C-tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>
"-------------------- NerdTree --------------------
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '_'
"-------------------- ultisnip --------------------
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file
"-------------------- YCM -------------------------
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
"-------------------- vim py ----------------------
au FileType python set sw=4
au FileType python set ts=4
au FileType python set sts=4
"-------------------- vim go ----------------------
au FileType go set sw=4
au FileType go set ts=4
au FileType go set sts=4
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType html set sw=4
au FileType html set ts=4
au FileType html set sts=4

"--------------------------------------------------
autocmd BufEnter *.* :call RemoveTrailingSpaces()
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Задаем собственные функции для назначения имен заголовкам табов -->
    function! MyTabLine()
	let tabline = ''

	" Формируем tabline для каждой вкладки -->
	    for i in range(tabpagenr('$'))
		" Подсвечиваем заголовок выбранной в данный момент вкладки.
		if i + 1 == tabpagenr()
		    let tabline .= '%#TabLineSel#'
		else
		    let tabline .= '%#TabLine#'
		endif

		" Устанавливаем номер вкладки
		let tabline .= '%' . (i + 1) . 'T'

		" Получаем имя вкладки
		let tabline .= ' %{MyTabLabel(' . (i + 1) . ')} |'
	    endfor
	" Формируем tabline для каждой вкладки <--

	" Заполняем лишнее пространство
	let tabline .= '%#TabLineFill#%T'

	" Выровненная по правому краю кнопка закрытия вкладки
	if tabpagenr('$') > 1
	    let tabline .= '%=%#TabLine#%999XX'
	endif

	return tabline
    endfunction

    function! MyTabLabel(n)
	let label = ''
	let buflist = tabpagebuflist(a:n)

	" Имя файла и номер вкладки -->
	    let label = substitute(bufname(buflist[tabpagewinnr(a:n) - 1]), '.*/', '', '')

	    if label == ''
		let label = '[No Name]'
	    endif

	    let label .= ' (' . a:n . ')'
	" Имя файла и номер вкладки <--

	" Определяем, есть ли во вкладке хотя бы один
	" модифицированный буфер.
	" -->
	    for i in range(len(buflist))
		if getbufvar(buflist[i], "&modified")
		    let label = '[+] ' . label
		    break
		endif
	    endfor
	" <--

	return label
    endfunction

"" Удалить пробелы в конце строк (frantsev)
function! RemoveTrailingSpaces()
   normal! mzHmy
   execute '%s:\s\+$::ge'
   normal! 'yzt`z
endfunction
