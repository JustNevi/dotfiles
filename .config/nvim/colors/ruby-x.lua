-- Setup
vim.cmd("highlight clear")
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.g.colors_name = "ruby-x"

-- Import
local colors = require("colors.ruby-x")

local P = colors.palette

local set = vim.api.nvim_set_hl

-- Base groups
set(0, "Normal",      { fg = P.fg, bg = P.bg })
set(0, "Comment",     { fg = P.clr14, italic = true })
set(0, "Constant",    { fg = P.clr5 })
set(0, "Identifier",  { fg = P.clr13})
set(0, "Statement",   { fg = P.clr1 })
set(0, "PreProc",     { fg = P.clr1 })
set(0, "Type",        { fg = P.clr4 })
set(0, "Special",     { fg = P.clr4 })
set(0, "LineNr",      { fg = P.clr1 })
set(0, "CursorLineNr",{ fg = P.clr1 })
set(0, "Visual",      { bg = P.clr8 })
set(0, "Search",      { bg = P.clr15})
set(0, "Delimiter", 	 { fg = P.clr1 })
set(0, "EndOfBuffer", { fg = P.bg 	})
set(0, "NonText", 	 { fg = P.bg 	})

-- Treesitter
set(0, "@function", { fg = P.clr3 })
set(0, "@variable", { fg = P.clr2 })
set(0, "@keyword",  { fg = P.clr9 })
set(0, "@string",   { fg = P.clr11 })

-- NvimTree
set(0, "NvimTreeNormal",      		{ fg = P.fg, bg = P.bg })
set(0, "NvimTreeRootFolder",  		{ fg = P.clr1, bold = true })
set(0, "NvimTreeFolderName",  		{ fg = P.clr10 })
set(0, "NvimTreeEmptyFolderName",  	{ fg = P.clr2 })
set(0, "NvimTreeOpenedFolderName", 	{ fg = P.clr11 })
set(0, "NvimTreeIndentMarker", 		{ fg = P.clr1 })
set(0, "NvimTreeCursorLine", 			{ fg = P.clr13 })
set(0, "NvimTreeSpecialFile", 		{ fg = P.clr14 })

-- Telescope
set(0, "TelescopeNormal", 				{ fg = P.fg, bg = P.bg })
set(0, "TelescopeBorder", 				{ fg = P.clr3, bg = P.bg })
set(0, "TelescopePromptTitle", 		{ fg = P.clr11 })
set(0, "TelescopePreviewTitle", 		{ fg = P.clr11 })
set(0, "TelescopeSelection", 			{ fg = P.clr5, bg = P.bg })

-- Toggleterm
set(0, "TermCursor", 					{ fg = P.fg, bg = P.clr8 })
set(0, "NormalFloat", 					{ bg = P.clr1 })

--- Gitsigns ---
set(0, "GitSignsAdd",    				{ fg = P.clr2, bg = P.bg  })
set(0, "GitSignsChange", 				{ fg = P.clr3, bg = P.bg  })
set(0, "GitSignsDelete", 				{ fg = P.clr1, bg = P.bg })
set(0, "SignColumn",		 				{ bg = P.bg })
set(0, "GitSignsCurrentLineBlame", 	{ fg = P.clr14, bg = P.clr14, italic = true })

set(0, "GitSignsAddPreview",    		{ fg = P.clr2, bg = P.clr12  })
set(0, "GitSignsDeletePreview", 		{ fg = P.clr1, bg = P.clr12 })

