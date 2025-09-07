local C = require('nvim-xresources.colors')

local X = {
    foreground = C.fg,
    background = C.bg,
    color0 = C.black,
    color1 = C.red,
    color2 = C.green,
    color3 = C.yellow,
    color4 = C.blue,
    color5 = C.magenta,
    color6 = C.cyan,
    color7 = C.white,
    color8 = C.light_black,
    color9 = C.light_red,
    color10 = C.light_green,
    color11 = C.light_yellow,
    color12 = C.light_blue,
    color13 = C.light_magenta,
    color14 = C.light_cyan,
    color15 = C.light_white,
}

local P = {
    bg = X.background,
    fg = X.foreground,
    clr0 = X.color0,
    clr1 = X.color1,
    clr2 = X.color2,
    clr3 = X.color3,
    clr4 = X.color4,
    clr5 = X.color5,
    clr6 = X.color6,
    clr7 = X.color7,
    clr8 = X.color8,
    clr9 = X.color9,
    clr10 = X.color10,
    clr11 = X.color11,
    clr12 = X.color12,
    clr13 = X.color13,
    clr14 = X.color14,
    clr15 = X.color15,
}


lualine = {
  normal = {
	 a = { bg = P.clr2, fg = P.bg, gui = "bold" },
	 b = { bg = P.bg, fg = P.fg },
	 c = { bg = P.bg, fg = P.fg },
  },
  insert = {
	 a = { bg = P.clr1, fg = P.bg, gui = "bold" },
	 b = { bg = P.bg, fg = P.fg },
	 c = { bg = P.bg, fg = P.fg },
  },
  visual = {
	 a = { bg = P.clr4, fg = P.bg, gui = "bold" },
	 b = { bg = P.bg, fg = P.fg },
	 c = { bg = P.bg, fg = P.fg },
  },
  replace = {
	 a = { bg = P.clr5, fg = P.bg, gui = "bold" },
	 b = { bg = P.bg, fg = P.fg },
	 c = { bg = P.bg, fg = P.fg },
  },
  inactive = {
	 a = { bg = P.clr5, fg = P.bg, gui = "bold" },
	 b = { bg = P.bg, fg = P.fg },
	 c = { bg = P.bg, fg = P.fg },
  },
}

return { palette = P, lualine = lualine }
