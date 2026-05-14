lua require("config.lazy")
lua require("mini.surround").setup()
lua require("lualine").setup()

set number
set mouse=a
set ignorecase
set smartcase
set incsearch
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

filetype plugin indent on

" colorscheme
set t_Co=256
syntax on

" misc mappings
imap jj <Esc>
nnoremap ; <cmd>lua require('telescope.builtin').find_files{ layout_strategy="vertical", cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1] }<cr>
nnoremap <C-f> <cmd>lua require('telescope.builtin').live_grep{ layout_strategy="vertical", cwd = vim.fn.systemlist("git rev-parse --show-toplevel")[1] }<cr>


" cycle through buffers
nmap <Tab> :bnext<CR>

""" dont move around when switching buffers
" Save current view settings on a per-window, per-buffer basis.
function! AutoSaveWinView()
    if !exists("w:SavedBufView")
        let w:SavedBufView = {}
    endif
    let w:SavedBufView[bufnr("%")] = winsaveview()
endfunction

" Restore current view settings.
function! AutoRestoreWinView()
    let buf = bufnr("%")
    if exists("w:SavedBufView") && has_key(w:SavedBufView, buf)
        let v = winsaveview()
        let atStartOfFile = v.lnum == 1 && v.col == 0
        if atStartOfFile && !&diff
            call winrestview(w:SavedBufView[buf])
        endif
        unlet w:SavedBufView[buf]
    endif
endfunction

" When switching buffers, preserve window view.
if v:version >= 700
    autocmd BufLeave * call AutoSaveWinView()
    autocmd BufEnter * call AutoRestoreWinView()
endif

" easy insert breakpoint
:iab bkpt import pdb; pdb.set_trace()
