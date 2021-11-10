let mapleader=" "
syntax on
set number
set norelativenumber
set cursorline
set wrap
set noshowcmd
set wildmenu
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set ruler
set hlsearch
set ignorecase
set undofile
set noerrorbells
set history=1000
set encoding=utf-8

inoremap { {}<ESC>i
noremap <LEADER><CR> :nohlsearch<CR>
inoremap ` <ESC>
nnoremap ` <ESC>
cnoremap ` <ESC>
vnoremap ` <ESC>




au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

call plug#begin('~/.vim/plugged')

Plug 'connorholyday/vim-snazzy'
Plug 'vim-airline/vim-airline'
"Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

call plug#end()

colorscheme snazzy



"======
"======coc.nvim
"======
"==coc.nvim==#" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
"==coc.nvim==#" unicode characters in the file autoload/float.vim
"==coc.nvim==#set encoding=utf-8
"==coc.nvim==#
"==coc.nvim==#" TextEdit might fail if hidden is not set.
"==coc.nvim==#set hidden
"==coc.nvim==#
"==coc.nvim==#" Some servers have issues with backup files, see #649.
"==coc.nvim==#set nobackup
"==coc.nvim==#set nowritebackup
"==coc.nvim==#
"==coc.nvim==#" Give more space for displaying messages.
"==coc.nvim==#"==set cmdheight=2
"==coc.nvim==#
"==coc.nvim==#" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
"==coc.nvim==#" delays and poor user experience.
"==coc.nvim==#set updatetime=300
"==coc.nvim==#
"==coc.nvim==#" Don't pass messages to |ins-completion-menu|.
"==coc.nvim==#set shortmess+=c
"==coc.nvim==#
"==coc.nvim==#" Always show the signcolumn, otherwise it would shift the text each time
"==coc.nvim==#" diagnostics appear/become resolved.
"==coc.nvim==#if has("nvim-0.5.0") || has("patch-8.1.1564")
"==coc.nvim==#  " Recently vim can merge signcolumn and number column into one
"==coc.nvim==#  set signcolumn=number
"==coc.nvim==#else
"==coc.nvim==#  set signcolumn=yes
"==coc.nvim==#endif
"==coc.nvim==#
"==coc.nvim==#" Use tab for trigger completion with characters ahead and navigate.
"==coc.nvim==#" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
"==coc.nvim==#" other plugin before putting this into your config.
"==coc.nvim==#inoremap <silent><expr> <TAB>
"==coc.nvim==#      \ pumvisible() ? "\<C-n>" :
"==coc.nvim==#      \ <SID>check_back_space() ? "\<TAB>" :
"==coc.nvim==#      \ coc#refresh()
"==coc.nvim==#inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"==coc.nvim==#
"==coc.nvim==#function! s:check_back_space() abort
"==coc.nvim==#  let col = col('.') - 1
"==coc.nvim==#  return !col || getline('.')[col - 1]  =~# '\s'
"==coc.nvim==#endfunction
"==coc.nvim==#
"==coc.nvim==#" Use <c-space> to trigger completion.
"==coc.nvim==#if has('nvim')
"==coc.nvim==#  inoremap <silent><expr> <c-space> coc#refresh()
"==coc.nvim==#else
"==coc.nvim==#  inoremap <silent><expr> <c-@> coc#refresh()
"==coc.nvim==#endif
"==coc.nvim==#
"==coc.nvim==#" Make <CR> auto-select the first completion item and notify coc.nvim to
"==coc.nvim==#" format on enter, <cr> could be remapped by other vim plugin
"==coc.nvim==#inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"==coc.nvim==#                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"==coc.nvim==#
"==coc.nvim==#" Use `[g` and `]g` to navigate diagnostics
"==coc.nvim==#" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
"==coc.nvim==#nmap <silent> [g <Plug>(coc-diagnostic-prev)
"==coc.nvim==#nmap <silent> ]g <Plug>(coc-diagnostic-next)
"==coc.nvim==#
"==coc.nvim==#" GoTo code navigation.
"==coc.nvim==#nmap <silent> gd <Plug>(coc-definition)
"==coc.nvim==#nmap <silent> gy <Plug>(coc-type-definition)
"==coc.nvim==#nmap <silent> gi <Plug>(coc-implementation)
"==coc.nvim==#nmap <silent> gr <Plug>(coc-references)
"==coc.nvim==#
"==coc.nvim==#" Use K to show documentation in preview window.
"==coc.nvim==#nnoremap <silent> K :call <SID>show_documentation()<CR>
"==coc.nvim==#
"==coc.nvim==#function! s:show_documentation()
"==coc.nvim==#  if (index(['vim','help'], &filetype) >= 0)
"==coc.nvim==#    execute 'h '.expand('<cword>')
"==coc.nvim==#  elseif (coc#rpc#ready())
"==coc.nvim==#    call CocActionAsync('doHover')
"==coc.nvim==#  else
"==coc.nvim==#    execute '!' . &keywordprg . " " . expand('<cword>')
"==coc.nvim==#  endif
"==coc.nvim==#endfunction
"==coc.nvim==#
"==coc.nvim==#" Highlight the symbol and its references when holding the cursor.
"==coc.nvim==#autocmd CursorHold * silent call CocActionAsync('highlight')
"==coc.nvim==#
"==coc.nvim==#" Symbol renaming.
"==coc.nvim==#nmap <leader>rn <Plug>(coc-rename)
"==coc.nvim==#
"==coc.nvim==#" Formatting selected code.
"==coc.nvim==#xmap <leader>f  <Plug>(coc-format-selected)
"==coc.nvim==#nmap <leader>f  <Plug>(coc-format-selected)
"==coc.nvim==#
"==coc.nvim==#augroup mygroup
"==coc.nvim==#  autocmd!
"==coc.nvim==#  " Setup formatexpr specified filetype(s).
"==coc.nvim==#  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"==coc.nvim==#  " Update signature help on jump placeholder.
"==coc.nvim==#  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
"==coc.nvim==#augroup end
"==coc.nvim==#
"==coc.nvim==#" Applying codeAction to the selected region.
"==coc.nvim==#" Example: `<leader>aap` for current paragraph
"==coc.nvim==#xmap <leader>a  <Plug>(coc-codeaction-selected)
"==coc.nvim==#nmap <leader>a  <Plug>(coc-codeaction-selected)
"==coc.nvim==#
"==coc.nvim==#" Remap keys for applying codeAction to the current buffer.
"==coc.nvim==#nmap <leader>ac  <Plug>(coc-codeaction)
"==coc.nvim==#" Apply AutoFix to problem on the current line.
"==coc.nvim==#nmap <leader>qf  <Plug>(coc-fix-current)
"==coc.nvim==#
"==coc.nvim==#" Map function and class text objects
"==coc.nvim==#" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
"==coc.nvim==#xmap if <Plug>(coc-funcobj-i)
"==coc.nvim==#omap if <Plug>(coc-funcobj-i)
"==coc.nvim==#xmap af <Plug>(coc-funcobj-a)
"==coc.nvim==#omap af <Plug>(coc-funcobj-a)
"==coc.nvim==#xmap ic <Plug>(coc-classobj-i)
"==coc.nvim==#omap ic <Plug>(coc-classobj-i)
"==coc.nvim==#xmap ac <Plug>(coc-classobj-a)
"==coc.nvim==#omap ac <Plug>(coc-classobj-a)
"==coc.nvim==#
"==coc.nvim==#" Remap <C-f> and <C-b> for scroll float windows/popups.
"==coc.nvim==#if has('nvim-0.4.0') || has('patch-8.2.0750')
"==coc.nvim==#  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"==coc.nvim==#  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"==coc.nvim==#  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
"==coc.nvim==#  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
"==coc.nvim==#  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"==coc.nvim==#  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"==coc.nvim==#endif
"==coc.nvim==#
"==coc.nvim==#" Use CTRL-S for selections ranges.
"==coc.nvim==#" Requires 'textDocument/selectionRange' support of language server.
"==coc.nvim==#nmap <silent> <C-s> <Plug>(coc-range-select)
"==coc.nvim==#xmap <silent> <C-s> <Plug>(coc-range-select)
"==coc.nvim==#
"==coc.nvim==#" Add `:Format` command to format current buffer.
"==coc.nvim==#command! -nargs=0 Format :call CocAction('format')
"==coc.nvim==#
"==coc.nvim==#" Add `:Fold` command to fold current buffer.
"==coc.nvim==#command! -nargs=? Fold :call     CocAction('fold', <f-args>)
"==coc.nvim==#
"==coc.nvim==#" Add `:OR` command for organize imports of the current buffer.
"==coc.nvim==#command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
"==coc.nvim==#
"==coc.nvim==#" Add (Neo)Vim's native statusline support.
"==coc.nvim==#" NOTE: Please see `:h coc-status` for integrations with external plugins that
"==coc.nvim==#" provide custom statusline: lightline.vim, vim-airline.
"==coc.nvim==#set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"==coc.nvim==#
"==coc.nvim==#" Mappings for CoCList
"==coc.nvim==#" Show all diagnostics.
"==coc.nvim==#nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"==coc.nvim==#" Manage extensions.
"==coc.nvim==#nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"==coc.nvim==#" Show commands.
"==coc.nvim==#nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"==coc.nvim==#" Find symbol of current document.
"==coc.nvim==#nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"==coc.nvim==#" Search workspace symbols.
"==coc.nvim==#nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"==coc.nvim==#" Do default action for next item.
"==coc.nvim==#nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"==coc.nvim==#" Do default action for previous item.
"==coc.nvim==#nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"==coc.nvim==#" Resume latest coc list.
"==coc.nvim==#nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
