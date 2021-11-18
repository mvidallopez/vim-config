let g:elite_mode = 1                     " Set arrow-keys to window resize
let g:global_symbol_padding = '  '       " Padding after nerd symbols
" let g:tabline_plugin_enable = 0          " Disable built-in top tabline
let g:enable_universal_quit_mapping = 0  " Disable normal 'q' mapping
"let g:disable_mappings = 0               " Disable config/mappings.vim
"let g:statusline_plugin_enable = 1
"
set nofoldenable " No code folding

" Spanish spell-checker enabled
nnoremap <Leader>es <cmd>set spelllang=es_es<CR>
nnoremap <Leader>en <cmd>set spelllang=en_us<CR>

" Disable highlighted search - Enable with <leader>+hs
set nohlsearch
nnoremap <Leader>hs :set hlsearch!<CR>

" Theme config
let g:hybrid_transparent_background = 1
let g:enable_bold_font = 1
let g:enable_italic_font = 1
colorscheme hybrid_material

" always show line numbers
set number
set relativenumber
" Leader-n to toggle line numbers
nmap <Leader>tn :set number! relativenumber!<CR>
" Vim wrap (display) long lines to fit in the window
set wrap
" Formatea TODAS las líneas largas del buffer y las parte a 80 caracteres
nmap<Leader>gq ggVGgq

" ----------------------------------------------------------------------------
" Buffer switching
" ----------------------------------------------------------------------------
" tab key: switch to next buffer
nnoremap <tab> :bn<CR>
" leader-b: List number buffers"
nnoremap <Leader>b :buffers<CR>

" show mode in cmd window - activar solo si el status (lualine) no lo muestra
set showmode

" Open History search - ex mode
nnoremap <Leader>eh q:

" For slides in real time with lookatme
" :autocmd TextChanged,TextChangedI <buffer> silent write
" -----------------
" | Plugins config |
" -----------------

" ----------------------------------------------------------------------------
" hardmode plugin
" ----------------------------------------------------------------------------
" Ctrl-h for hardmode (disables movement keys)
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <Leader>h <Esc>:call ToggleHardMode()<CR>
let g:HardMode_level = 'wannabe'
" let g:HardMode_hardmodeMsg = 'Don''t use this!'

" ----------------------------------------------------------------------------
" Plugin Telescope
" ----------------------------------------------------------------------------
nnoremap <Leader>ff :lua require'telescope.builtin'.file_browser{ cwd = vim.fn.expand('%:p:h') }<cr>
nnoremap <Leader>fs :lua require'telescope.builtin'.git_status{}<cr>

" ----------------------------------------------------------------------------
" Plugin markdown-preview
" ----------------------------------------------------------------------------
" To preview a markdown file
nnoremap <M-m> :MarkdownPreview<CR>

" ----------------------------------------------------------------------------
" Plugin Whitespace
" ----------------------------------------------------------------------------
"" Delete trailing whitespaces
nnoremap <Leader>t :WhitespaceErase<CR>

" ----------------------------------------------------------------------------
" Plugin neoscroll
" ----------------------------------------------------------------------------
" Enables smooth scroll plugin
lua require('neoscroll').setup()
