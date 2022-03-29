" -----------------------------------------------------------------------------
" Inspired by
" https://github.com/Blacksuan19/init.nvim/blob/master/init.vim
" https://github.com/AlexVKO/VimKO
" -----------------------------------------------------------------------------
" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------
call plug#begin()
Plug 'NLKNguyen/papercolor-theme'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" COC
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" Theme gruvbox
Plug 'morhetz/gruvbox'

" FuzzyFinder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" -----------------------------------------------------------------------------
" Snippet, check it with tab configuration
" -----------------------------------------------------------------------------
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" let g:UltiSnipsExpandTrigger="<tab>"
" " list all snippets for current filetype
" let g:UltiSnipsListSnippets="<c-l>"

" NerdTree
Plug 'preservim/nerdtree'

" Tagbar
Plug 'majutsushi/tagbar'

" Comments
Plug 'tpope/vim-commentary'

" Grammar Checker
Plug 'rhysd/vim-grammarous'

" Better motion
Plug 'easymotion/vim-easymotion'

" Bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" Navigate and highlight matching words
Plug 'andymass/vim-matchup'

" Surround management
Plug 'tpope/vim-surround'

" Allow repeat to work with plugins
Plug 'tpope/vim-repeat'

" Tagbar for vim
Plug 'majutsushi/tagbar'

" Zen mode
Plug 'junegunn/goyo.vim'

" Fugitive for git management
Plug 'tpope/vim-fugitive'

" Javascript
Plug 'Galooshi/vim-import-js'

" ES2015 code snippets
Plug 'epilande/vim-es2015-snippets'

" HTML
Plug 'mattn/emmet-vim'

" Find and Replace
" Plug 'brooth/far.vim',{  'on': ['Far',  'Farp',  'F'] } "not effiecient depricated
Plug 'jremmen/vim-ripgrep'

" rainbow parenthesis
Plug 'luochen1990/rainbow'

" material color themes
Plug 'hzchirs/vim-material'

" highlight matching html tags
Plug 'gregsexton/MatchTag'

" move visual selection
Plug 'Jorengarenar/vim-MvVis'

" show indentation lines
Plug 'Yggdroot/indentLine'

" cool start up screen
Plug 'mhinz/vim-startify'

" some very smooth ass scrolling
Plug 'psliwka/vim-smoothie'

" complete words from a tmux panes
Plug 'wellle/tmux-complete.vim'

" run common Unix commands inside Vim
Plug 'tpope/vim-eunuch'

" make sandwiches
Plug 'machakann/vim-sandwich'

" seamless vim and tmux navigation
Plug 'christoomey/vim-tmux-navigator'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" Plug 'memgraph/cypher.vim'

" pretty icons everywhere
Plug 'ryanoasis/vim-devicons'

call plug#end()

" -----------------------------------------------------------------------------
" Vim-Go
" -----------------------------------------------------------------------------
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
let g:go_fmt_autosave = 0
let g:go_highlight_structs = 1
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_fold_enable = ['block', 'import', 'varconst', 'package_comment']

" -----------------------------------------------------------------------------
" FuzzyFinder
" -----------------------------------------------------------------------------
command! -bang -nargs=* Rg
			\ call fzf#vim#grep(
			\   'rg --column --line-number --no-heading --color=always --smart-case --ignore dist '.shellescape(<q-args>), 1,
			\   <bang>0 ? fzf#vim#with_preview('up:60%')
			\           : fzf#vim#with_preview('right:50%:hidden', '?'),
			\   <bang>0)

let g:fzf_buffers_jump = 1

" FuzzyFinder Mappings
nnoremap  [FuzzyFinder]   <Nop>
nmap      ; [FuzzyFinder]

nnoremap <silent> [FuzzyFinder]f :Files<CR>
nnoremap <silent> [FuzzyFinder]co :Files <CR> controllers
nnoremap <silent> [FuzzyFinder]mo :Files <CR> models
nnoremap <silent> [FuzzyFinder]g :Find<CR>
nnoremap <silent> [FuzzyFinder]t :Tags <CR>
nnoremap <silent> [FuzzyFinder]T :BTags <CR>
nnoremap <silent> [FuzzyFinder]gc :BCommits <CR>
nnoremap <silent> [FuzzyFinder]gs :GFiles?<CR>
nnoremap <silent> [FuzzyFinder]/ :BLines <CR>
nnoremap <silent> [FuzzyFinder]H :History <CR>
nnoremap <silent> [FuzzyFinder]hh :Maps <CR>
nnoremap <silent> [FuzzyFinder]h :History: <CR>
nnoremap <silent> [FuzzyFinder]b :Buffers<CR>
nnoremap <silent> [FuzzyFinder]c :Commands<CR>
nnoremap <silent> [FuzzyFinder]r :Rg<CR>
nnoremap <silent> [FuzzyFinder]me :CocList outline<cr>
" nnoremap <silent> [FuzzyFinder]me :BLines <CR> def\<space>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'border': 'sharp' } }
let g:fzf_tags_command = 'ctags -R'

let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
let $FZF_DEFAULT_COMMAND = "rg --files --hidden --glob '!.git/**' --glob '!build/**' --glob '!.dart_tool/**' --glob '!.idea' --glob '!node_modules'"

" -----------------------------------------------------------------------------
" Files
" -----------------------------------------------------------------------------
nnoremap  [Files]   <Nop>
nmap      , [Files]

" Duplicate current file
nnoremap [Files]du :saveas <C-r>=expand('%')<cr><left><left><left>

" Delete current file
nnoremap [Files]de :!rm %

" Move/Rename current file
nnoremap [Files]m :!mv <C-r>=expand('%')<cr> <C-r>=expand('%')<cr><left><left><left>

" Copy Relative path
nnoremap <silent> [Files]Y :let @+=join([expand("%"), line('.')], ':')<CR>:echo 'Relative path copied to clipboard.'<CR>

" Copy Absolute path
nnoremap <silent> [Files]y :let @+=expand("%:p")<CR>:echo 'Absolute pat copied to clipboard.'<CR>

" Sidebars
nnoremap <silent> [Files]a :NERDTreeFind<CR>
nnoremap <silent> [Files]e :NERDTreeToggle<CR>

" GoLint
nnoremap [Files]L :GoLint <CR> "TODO: GoLint not work properly


" -----------------------------------------------------------------------------
" Windows
" -----------------------------------------------------------------------------
nnoremap  [Windows]   <Nop>
nmap      s [Windows]

" Split horizontaly
nnoremap <silent> [Windows]x :<C-u>split<CR>

" Split verticaly
nnoremap <silent> [Windows]v :<C-u>vsplit<CR>

" Close window
nnoremap <silent> [Windows]c :close<CR>

" Close all but the current
nnoremap <silent> [Windows]o :<C-u>only<CR>

" Back to previoius buffer
nnoremap <silent> [Windows]b :b#<CR>

" Rotate buffers
nnoremap <silent> [Windows]r <C-w>x

" Detache the current pane to a new full window
nnoremap <silent> [Windows]n <C-w>T | :tablast

" Swap panes position
nnoremap <silent> [Windows]s <C-w>R

" Zoom buffer
nnoremap [Windows]z :Goyo<CR>


" -----------------------------------------------------------------------------
" Tabs
" -----------------------------------------------------------------------------
nnoremap  [Tabs]   <Nop>
nmap      t [Tabs]

" Move to left/right
nnoremap <silent> [Tabs]H :tabmove -1<cr>
nnoremap <silent> [Tabs]L :tabmove +1<cr>

nnoremap <silent> [Tabs]n :tabmove +1<cr>

nnoremap <silent> [Tabs]t :tabnew<CR>
nnoremap <silent> [Tabs]l :tabnext<CR>
nnoremap <silent> [Tabs]h :tabprev<CR>


" -----------------------------------------------------------------------------
" Leaders
" -----------------------------------------------------------------------------
let mapleader="\<space>"

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Indent file
nnoremap <leader>e gg=G

" Remove empty spaces
nnoremap <leader>, :<C-u>silent! keeppatterns %substitute/\s\+$//e<CR><C-o>

" Toggle Tagbar
nmap <leader>; :TagbarToggle<CR>

" Focus the current fold by closing all others
nnoremap <leader>z zMza

" Source $MYVIMRC
nmap <leader>r :so ~/.config/nvim/init.vim<CR>

" Buffer delete
nmap <leader>q :bd<CR>

" Choose buffer
nmap <leader>b :buffers<CR>:buffer<Space>

" markdown preview
au FileType markdown nmap <leader>m :MarkdownPreview<CR>

" fugitive mappings
nmap <leader>gd :Gdiffsplit<CR>
nmap <leader>gb :Git blame<CR>

" Smart Duplication
nnoremap <Leader>d :t.<cr>
vnoremap <Leader>d :co-1<cr>


" -------------------------------------------------------------------------------------
" COC
" -------------------------------------------------------------------------------------
" required by coc
set hidden
set nobackup
set nowritebackup
set cmdheight=2                                         " Better display for messages
set updatetime=300                                      " Smaller updatetime for CursorHold & CursorHoldI
set shortmess+=c                                        " don't give |ins-completion-menu| messages.
set signcolumn=yes                                      " always show signcolumns

" Navigate snippet placeholders using tab
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" list of the extensions to make sure are always installed
let g:coc_global_extensions = [
            \'coc-go',
            \'coc-yank',
            \'coc-pairs',
            \'coc-json',
            \'coc-css',
            \'coc-html',
            \'coc-tsserver',
            \'coc-yaml',
            \'coc-lists',
            \'coc-snippets',
            \'coc-pyright',
            \'coc-clangd',
            \'coc-prettier',
            \'coc-xml',
            \'coc-syntax',
            \'coc-git',
            \'coc-marketplace',
            \'coc-highlight',
            \'coc-sh',
            \]


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use enter to accept snippet expansion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<CR>"

" check if last inserted char is a backspace (used by coc pmenu)
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Show all diagnostics
nnoremap <leader>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <leader>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <leader>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <leader>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <leader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <leader>p  :<C-u>CocListResume<CR>



" -----------------------------------------------------------------------------
" General Mappings
" -----------------------------------------------------------------------------
" go to normal mode and save
" inoremap ;w <Esc>
nnoremap ;w :mkview!<CR> :w<CR> :GoFmt<CR> :loadview<CR>

" Dictionary and documentations
" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>
" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Open easy motion between panels
nmap <silent> ? <Plug>(easymotion-overwin-w)

" Quite with q
nnoremap <silent> q :<C-u>:quit<CR>


" Macro
nnoremap Q q
nnoremap M @q
vnoremap M :norm @q<CR>

" Toggle fold
nnoremap <return> za

" Resize
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Simple widnow switcher shortcuts
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map \ :Startify <CR>
nmap <Tab> :bnext<CR>
nmap <S-Tab> :bprevious<CR>


" show mapping on all modes with F1
nmap <F1> <plug>(fzf-maps-n)
imap <F1> <plug>(fzf-maps-i)
vmap <F1> <plug>(fzf-maps-x)

:command! E Explore "short command for netrw

" Javascript
" Pretifier configuration
autocmd FileType javascript set formatprg=prettier\ --stdin

" switch to relative numbers in normal mode
autocmd BufLeave * :set norelativenumber
autocmd BufEnter * :set relativenumber
autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" -----------------------------------------------------------------------------
" General Settings
" -----------------------------------------------------------------------------
" colors
" set t_Co=256
set background=dark
colorscheme gruvbox
" colorscheme PaperColor
" colorscheme vim-material

filetype on
filetype plugin on
filetype indent on

" Treat words with dash as a word
set iskeyword+=-

" Appearance
set scrolloff=2         " Keep at least 2 lines above/below
set sidescrolloff=2     " Keep at least 5 characters left/right
set display=lastline

" save fold on case of exit
set foldmethod=syntax
"augroup remember_folds " TODO: it returns error
"	autocmd!
"	autocmd BufWinLeave * mkview
"	autocmd BufWinEnter * silent! loadview
"augroup END

set colorcolumn=90

" Tabs and Indents
set smartindent   " Smart autoindenting on new lines
set shiftround    " Round indent to multiple of 'shiftwidth'

" Searching
set incsearch       " highlight text while searching
set smartcase       " override ignorecase
set infercase       " Adjust case in insert completion mode
set hlsearch        " Highlight search results
set wrapscan        " Searches wrap around the end of the file
set showmatch       " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set matchtime=1     " Tenths of a second to show the matching paren
set cpoptions-=m    " showmatch will wait 0.5s or until a char is typed

" Behavior
set nowrap
"set list                " Show hidden characters
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:\ ,precedes:«,extends:»
" set list listchars=trail:»,tab:»-                     " use tab to navigate in list mode
set termguicolors                                       " Opaque Background
set mouse=a                                             " enable mouse scrolling
set clipboard+=unnamedplus                              " use system clipboard by default
set tabstop=4 softtabstop=4 shiftwidth=4 autoindent     " tab width
set noexpandtab smarttab                                " tab key actions
set fillchars+=vert:\▏                                  " requires a patched nerd font (try FiraCode)
set wrap breakindent                                    " wrap long lines to the width set by tw
syntax on
set encoding=UTF-8                                      "text encoding
set number                                              " enable numbers on the left
set relativenumber                                      " current line is 0
set title                                               " tab title as file name
set noshowcmd                                           " to get rid of display of last command
set conceallevel=2                                      " set this so we wont break indentation plugin
set splitright                                          " open vertical split to the right
set splitbelow                                          " open horizontal split to the bottom
set tw=90                                               " auto wrap lines that are longer than that
set emoji                                               " enable emojis
set history=2000                                        " history limit
set backspace=indent,eol,start                          " sensible backspacing
set undofile                                            " enable persistent undo
set undodir=/tmp                                        " undo temp file directory
" set foldlevel=0                                         " open all folds by default
set inccommand=nosplit                                  " visual feedback while substituting
set showtabline=1                                       " always show tabline
set grepprg=rg\ --vimgrep                               " use rg as default grepper

" performance tweaks
set nocursorline
set nocursorcolumn
" set scrolljump=5
set lazyredraw
set redrawtime=10000
set synmaxcol=200                                       " Don't syntax highlight long lines
set re=1


" Themeing
" let g:material_style = 'oceanic'
hi Pmenu guibg='#00010a' guifg=white                    " popup menu colors
hi Comment gui=italic cterm=italic                      " italic comments
" hi Search guibg=#b16286 guifg=#ebdbb2 gui=NONE          " search string highlight color
" hi NonText guifg=bg                                     " mask ~ on empty lines, conflict with listchars
hi clear CursorLineNr                                   " use the theme color for relative number
hi CursorLineNr gui=bold                                " make relative number bold
hi SpellBad guifg=NONE gui=bold,undercurl               " misspelled words

" colors for git (especially the gutter)
hi DiffAdd  guibg=#0f111a guifg=#43a047
hi DiffChange guibg=#0f111a guifg=#fdd835
hi DiffRemoved guibg=#0f111a guifg=#e53935

" coc multi cursor highlight color
hi CocCursorRange guibg=#b16286 guifg=#ebdbb2           " TODO, I don't use multi cursor


" -----------------------------------------------------------------------------
" Plugin Configurations
" -----------------------------------------------------------------------------
"" built in plugins
" let loaded_netrwPlugin = 1                              " disable netrw
let g:omni_sql_no_default_maps = 1                      " disable sql omni completion
let g:loaded_python_provider = 0
if glob('~/.python3') != ''
  let g:python3_host_prog = expand('~/.python3/bin/python')
else
  let g:python3_host_prog = systemlist('which python3')[0]
endif


" indentLine
let g:indentLine_char_list = ['▏', '¦', '┆', '┊']
let g:indentLine_setColors = 0
let g:indentLine_setConceal = 0                         " actually fix the annoying markdown links conversion
let g:indentLine_fileTypeExclude = ['startify']

" startify
let g:startify_padding_left = 10
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
let g:startify_change_to_vcs_root = 1
let g:startify_lists = [
    \ { 'type': 'dir'       },
    \ { 'type': 'files'     },
    \ { 'type': 'sessions'  },
    \ { 'type': 'bookmarks' },
    \ { 'type': 'commands' },
    \ ]

" bookmark examples
let  g:startify_bookmarks =  [
    \ {'v': '~/.config/nvim'},
    \ {'d': '~/.dotfiles' }
    \ ]

" custom commands
let g:startify_commands = [
    \ {'ch': ['Health Check', ':checkhealth']},
    \ {'ps': ['Plugins status', ':PlugStatus']},
    \ {'pu': ['Update vim plugins',':PlugUpdate | PlugUpgrade']},
    \ {'uc': ['Update coc Plugins', ':CocUpdate']},
    \ {'h':  ['Help', ':help']},
    \ ]


" rainbow brackets
let g:rainbow_active = 1

" tmux navigator
let g:tmux_navigator_no_mappings = 1

" semshi settings
let g:semshi#error_sign	= v:false                       " let ms python lsp handle this

" Goyo config
let g:goyo_height='95%'
let g:goyo_width='100'


" -----------------------------------------------------------------------------
" Commands
" -----------------------------------------------------------------------------

au BufEnter * set fo-=c fo-=r fo-=o                     " stop annoying auto commenting on new lines
au FileType help wincmd L                               " open help in vertical split
au BufWritePre * :%s/\s\+$//e                           " remove trailing whitespaces before saving
au CursorHold * silent call CocActionAsync('highlight') " highlight match on cursor hold

" enable spell only if file type is normal text
let spellable = ['markdown', 'gitcommit', 'txt', 'text', 'liquid', 'rst']
autocmd BufEnter * if index(spellable, &ft) < 0 | set nospell | else | set spell | endif


" coc completion popup
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" startify if no passed argument or all buffers are closed
augroup noargs
    " startify when there is no open buffer left
    autocmd BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) | Startify | endif

    " open startify on start if no argument was passed
    autocmd VimEnter * if argc() == 0 | Startify | endif
augroup END

" fzf if passed argument is a folder
augroup folderarg
    " change working directory to passed directory
    autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | execute 'cd' fnameescape(argv()[0])  | endif

    " start startify (fallback if fzf is closed)
    autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | Startify  | endif

    " start fzf on passed directory
    autocmd VimEnter * if argc() != 0 && isdirectory(argv()[0]) | execute 'Files ' fnameescape(argv()[0]) | endif
augroup END

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


" format with available file format formatter
command! -nargs=0 Format :call CocAction('format')

" organize imports
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" files in fzf
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--inline-info']}), <bang>0)

" advanced grep
command! -nargs=* -bang Rg call RipgrepFzf(<q-args>, <bang>0)


" -----------------------------------------------------------------------------
" Custom Functions
" -----------------------------------------------------------------------------
" Checkbox toogler
fu! ToggleCheckbox()
	let line = getline('.')

  if(match(line, '\[.*\]') != -1)
    let states = [' ', 'x', 'n/a']

    if(match(line, '\[\]') != -1)
      let line = substitute(line, '\[\]', '[ ]', '')
    end

    for state in states
      if(match(line, '\[' . state . '\]') != -1)
        if state == 'n/a'
          let next_state = states[0]
        else
          let next_state = states[index(states, state) + 1]
        endif
        let line = substitute(line, '\[' . state . '\]', '[' . next_state . ']', '')
        break
      endif
    endfor
  else
    let line = substitute(line, '\<', '' . '[ ]' . ' ', '')
  endif

	call setline('.', line)
endf

" Checkbox
map <leader>x :call ToggleCheckbox()<cr>

" advanced grep(faster with preview)
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

" startify file icons
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" set guifont=DroidSansMono_Nerd_Font:h11 "TODO: Delete it in case it is extra

" show docs on things with K
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

