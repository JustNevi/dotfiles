vim.cmd("highlight clear")
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.g.colors_name = "ruby"

local colors = require("colors.ruby_dark")

local p = colors.palette
local c = colors.colors

local set = vim.api.nvim_set_hl

-- Base groups
set(0, "Normal",      { fg = c.fg , bg = c.bg })
set(0, "Comment",     { fg = c.gray, italic = true })
set(0, "Constant",    { fg = p.g })
set(0, "Identifier",  { fg = p.e })
set(0, "Statement",   { fg = p.h })
set(0, "PreProc",     { fg = c.yellow })
set(0, "Type",        { fg = c.green })
set(0, "Special",     { fg = c.g })
set(0, "LineNr",      { fg = p.c })
set(0, "CursorLineNr",{ fg = c.yellow })
set(0, "Visual",      { bg = p.c })
set(0, "Delimiter", 	 { fg = p.g })
set(0, "EndOfBuffer", { fg = "bg" })
set(0, "NonText", 	 { fg = "bg" })

-- Lualine (if using custom c)
-- You can skip this if using default lualine integrations

-- Treesitter
set(0, "@function", { fg = p.f })
set(0, "@variable", { fg = c.fg })
set(0, "@keyword",  { fg = p.h })
set(0, "@string",   { fg = p.e })

-- NvimTree
set(0, "NvimTreeNormal",      { fg = c.fg, bg = c.bg })
set(0, "NvimTreeRootFolder",  { fg = p.g, bold = true })
set(0, "NvimTreeFolderName",  { fg = p.g })
set(0, "NvimTreeEmptyFolderName",  { fg = p.f })
set(0, "NvimTreeOpenedFolderName", { fg = p.g})
set(0, "NvimTreeIndentMarker", { fg = p.b })
set(0, "NvimTreeCursorLine", { fg = p.h })
set(0, "NvimTreeSpecialFile", { fg = c.blue })

-- Telescope
set(0, "TelescopeNormal", { fg = c.fg, bg = c.bg })
set(0, "TelescopeBorder", { fg = c.gray, bg = c.bg })
set(0, "TelescopePromptTitle", { fg = p.h })
set(0, "TelescopePreviewTitle", { fg = c.green })
set(0, "TelescopeSelection", { fg = c.blue, bg = p.c })

-- Toggleterm
set(0, "TermCursor", { fg = c.fg, bg = p.c })
set(0, "NormalFloat", { bg = c.bg })

--- Gitsigns ---
set(0, "GitSignsAdd",    { fg = c.green, bg = c.bg  })
set(0, "GitSignsChange", { fg = p.f, bg = c.bg  })
set(0, "GitSignsDelete", { fg = p.g, bg = c.bg })
set(0, "SignColumn",		 { bg = c.bg })
set(0, "GitSignsCurrentLineBlame", { fg = c.gray, bg = c.bg, italic = true })

set(0, "GitSignsAddPreview",    { fg = c.green, bg = p.c  })
set(0, "GitSignsDeletePreview", { fg = p.g, bg = p.c })

