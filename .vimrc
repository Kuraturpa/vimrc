if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

set smartindent
set smarttab
set autoindent
set ts=3
set sw=3
set number
syntax on
set showmatch
set showmode
colorscheme colorscheme_template
highlight LineNr guibg=white ctermfg=white
set cul
hi CursorLine term=none cterm=none ctermbg=232

filetype on
filetype plugin on

if $TERM == "gnome-terminal"
	if has("autocmd")
		au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
	    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
		au VimLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
	endif
endif

"au VimEnter * NERDTree"
