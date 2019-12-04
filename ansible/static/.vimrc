packadd! onedark

set path+=** " allow :find command search stuff recursively
set wildmenu " enable wildmenu, allow tab when search file with :find

" UNLOCKED:
" - :find file-name

let g:ctrlp_match_window = 'bottom,order:btt'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Tweaks for file browsing
let g:netrw_banner=0 " disable annoying banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open splits to the right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" UNLOCKED:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

set laststatus=2
set noshowmode
set hlsearch    " turn on search highlighting
set incsearch   " highlight search during typing

set autoindent
set noexpandtab
set tabstop=2
set shiftwidth=2
set mouse=a
set number
set listchars=tab:!·,space:·,trail:·
set list
set cursorline
set showmatch
set foldenable

let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

let g:javascript_plugin_flow                = 1
let g:javascript_conceal_function           = "ƒ"
let g:javascript_conceal_null               = "ø"
let g:javascript_conceal_undefined          = "¿"
set conceallevel=1

let g:onedark_hide_endofbuffer=0
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256
let g:onedark_color_overrides = {
	\ "black": {"gui": "#272c33", "cterm": "0", "cterm16": "0" }
	\}
let g:lightline = {
	\   'colorscheme': 'onedark',
	\}

if (has("autocmd"))
	augroup colorextend
		autocmd!
		" Make `Function`s bold in GUI mode
		autocmd ColorScheme * call onedark#extend_highlight("Function", { "gui": "italic", "cterm": "italic", "fg": { "cterm": 173  } })
		autocmd ColorScheme * call onedark#extend_highlight("Conceal", { "gui": "bold", "fg": { "gui": "#C678DD" } })
		autocmd ColorScheme * call onedark#extend_highlight("jsFunction", { "gui": "italic" })
	augroup END
endif

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
	if (has("nvim"))
		"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
	"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
	" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
	if (has("termguicolors"))
		set termguicolors
	endif
endif

map <silent> <C-n> :NERDTreeToggle<CR>

syntax on
colorscheme onedark
