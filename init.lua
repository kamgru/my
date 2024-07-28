local vim = vim

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true

local Plug = vim.fn['plug#']
vim.call('plug#begin')
Plug('neovim/nvim-lspconfig')
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
Plug('nvim-lua/plenary.nvim')
Plug('nvim-telescope/telescope.nvim')
Plug('rebelot/kanagawa.nvim')
Plug('folke/zen-mode.nvim')

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

vim.call('plug#end')

vim.cmd('colorscheme kanagawa')

-- zen mode config
zen_opt = {
	plugins = {
		options = {
			enabled = true,
			showcmd = true,
			laststatus = 3
		},
		tmux = { enabled = true }
	}
}
local zen = require("zen-mode");
vim.keymap.set('n', '<leader>zz', function() zen.toggle(zen_opt) end)
-- zen mode config end

vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader><Tab>', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
vim.keymap.set('n', '<leader>nn', '<cmd>noh<cr>')
vim.keymap.set('n', '<leader>rr', function() vim.lsp.buf.rename() end)
vim.keymap.set('n', '<leader>qwe', '<cmd>e ~/.config/nvim/init.lua<cr>')
vim.keymap.set('n', '<S-Tab>', '<cmd>bp<cr>')

require'lspconfig'.clangd.setup{}


