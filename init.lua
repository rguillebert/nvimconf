require('plugins')

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true


vim.cmd([[
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.lua setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd BufNewFile,BufRead *.tf setlocal noexpandtab tabstop=2 shiftwidth=2

colorscheme xoria256

set path+=**
set shortmess+=I
set clipboard=unnamedplus

set wildmode=longest:full,full
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.pyc,*/static-build/*,*/static/*,*/build/*,*/.virtualenv/*,*/node_modules/*

let mapleader = " "

nnoremap <leader>s <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>d <cmd>lua require('telescope.builtin').oldfiles()<cr>
nnoremap <leader>f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>g <cmd>lua require('telescope.builtin').live_grep()<cr>

tnoremap <Esc> <C-\><C-N>
]])
