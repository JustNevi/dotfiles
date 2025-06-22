-- Define your color palette
local M = {}

M.colors = {
    bg_dark = "#282A36",
    bg_light = "#F8F8F2",
    fg_default = "#F8F8F2",
    comment_grey = "#6272A4",
    red = "#FF5555",
    green = "#50FA7B",
    yellow = "#F1FA8C",
    blue = "#BD93F9",
    purple = "#FF79C6",
    cyan = "#8BE9FD",
    orange = "#FFB86C",
    white = "#F8F8F2",
    black = "#282A36",
}

-- Set global options for the theme
vim.cmd.highlight('clear') -- Clear existing highlights
vim.opt.termguicolors = true -- Enable true color support

-- Set the background (dark or light)
vim.opt.background = "dark" -- Or "light"

-- Set the name of your colorscheme
vim.g.colors_name = "my_custom_theme"

-- Define highlight groups using nvim_set_hl
-- The first argument is 0 (global namespace)
-- The second argument is the highlight group name (string)
-- The third argument is a table of attributes:
--   - fg: foreground color
--   - bg: background color
--   - sp: special color (for underlines, etc.)
--   - bold: boolean
--   - italic: boolean
--   - underline: boolean
--   - reverse: boolean (swaps fg and bg)

-- General highlights
vim.api.nvim_set_hl(0, "Normal", { fg = M.colors.fg_default, bg = M.colors.bg_dark })
vim.api.nvim_set_hl(0, "Comment", { fg = M.colors.comment_grey, italic = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = M.colors.comment_grey })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3B3D4F" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = M.colors.yellow, bold = true })
vim.api.nvim_set_hl(0, "Visual", { bg = "#44475A" })
vim.api.nvim_set_hl(0, "Folded", { fg = M.colors.comment_grey, bg = "#3B3D4F" })
vim.api.nvim_set_hl(0, "NonText", { fg = M.colors.comment_grey })

-- Syntax highlights (examples)
vim.api.nvim_set_hl(0, "Keyword", { fg = M.colors.purple })
vim.api.nvim_set_hl(0, "Statement", { fg = M.colors.purple })
vim.api.nvim_set_hl(0, "Function", { fg = M.colors.green })
vim.api.nvim_set_hl(0, "String", { fg = M.colors.yellow })
vim.api.nvim_set_hl(0, "Number", { fg = M.colors.purple })
vim.api.nvim_set_hl(0, "Boolean", { fg = M.colors.purple })
vim.api.nvim_set_hl(0, "Constant", { fg = M.colors.cyan })
vim.api.nvim_set_hl(0, "Identifier", { fg = M.colors.blue })
vim.api.nvim_set_hl(0, "Type", { fg = M.colors.cyan })

-- LSP/Diagnostic highlights
vim.api.nvim_set_hl(0, "LspDiagnosticsError", { fg = M.colors.red })
vim.api.nvim_set_hl(0, "LspDiagnosticsWarning", { fg = M.colors.orange })
vim.api.nvim_set_hl(0, "LspDiagnosticsInformation", { fg = M.colors.blue })
vim.api.nvim_set_hl(0, "LspDiagnosticsHint", { fg = M.colors.comment_grey })

-- UI elements
vim.api.nvim_set_hl(0, "StatusLine", { fg = M.colors.white, bg = M.colors.blue, bold = true })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = M.colors.comment_grey, bg = M.colors.bg_dark })
vim.api.nvim_set_hl(0, "Pmenu", { fg = M.colors.fg_default, bg = "#44475A" })
vim.api.nvim_set_hl(0, "PmenuSel", { fg = M.colors.blue, bg = "#6272A4" })

-- Link existing highlight groups
-- This means that `ErrorMsg` will use the same colors as `Error`
vim.api.nvim_set_hl(0, "ErrorMsg", { link = "Error" })
vim.api.nvim_set_hl(0, "WarningMsg", { link = "Warning" })

return M
