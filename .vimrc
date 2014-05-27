" установить keymap, чтобы по Ctrl+^ переключался на русский и обратно
set keymap=russian-jcukenwin
" по умолчанию - латинская раскладка
set iminsert=0
" по умолчанию - латинская раскладка при поиске
set imsearch=0
" игнорировать регистр при поиске
set ic
" подсвечивать поиск
set hls
" использовать инкрементальный поиск
set is
" ширина текста
set textwidth=70
" Кодировка
set encoding=utf8
set guifont=courier_new:h10:cRUSSIAN
set iskeyword=@,48-57,_,192-255
" табуляция
set ts=2
" отображение выполняемой команды
set showcmd
" перенос по словам, а не по буквам
set linebreak
set dy=lastline
set directory=~/.vim/tmp/swap
set number
" Выключить совместимость с vi
set nocompatible
set autoindent

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS

filetype on
filetype plugin on

imap <c-f> <c-x><c-o>
map <F2> :w<CR>

function! Auto_complete_string()
	if pumvisible()
		return "\<C-n>"
	else
		return "\<C-x>\<C-o>\<C-r>=Auto_complete_opened()\<CR>"
	end
endfunction

function! Auto_complete_opened()
	if pumvisible()
		return "\<Down>"
	end
		return ""
endfunction

inoremap <expr> <Nul> Auto_complete_string()
inoremap <expr> <C-Space> Auto_complete_string()
