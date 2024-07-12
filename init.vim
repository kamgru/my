:set number
:set relativenumber
:set shiftwidth=4
:set tabstop=4
:set signcolumn=yes

:tnoremap <Esc> <C-\><C-n>

nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

call plug#begin()
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'rebelot/kanagawa.nvim'
call plug#end()

:colorscheme kanagawa
