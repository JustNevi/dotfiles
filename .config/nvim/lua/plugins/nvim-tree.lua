return {
  	"nvim-tree/nvim-tree.lua",
  	version = "*",
  	lazy = false,
	dependencies = {
    	"nvim-tree/nvim-web-devicons",
  	},
  	config = function()
    	require("nvim-tree").setup({
			git = {
				ignore = false
			},
		})

		vim.api.nvim_set_keymap('n', '<leader>e', '<Cmd>NvimTreeFocus<CR>', { noremap = true, silent = true, desc = 'Focus NvimTree (and open if closed)' })
		vim.api.nvim_set_keymap('n', '<leader>E', '<Cmd>NvimTreeToggle<CR>', { noremap = true, silent = true, desc = 'Toggle NvimTree' })
  	end,
}
