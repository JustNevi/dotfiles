
p = {
	a 		= "#220802",
	c 		= "#640D14",
	d 		= "#800E13",
	e 		= "#AD2831",
	f 		= "#E85D04",
	g 		= "#BE024B",
	h 		= "#FF6978",
}

c = {
	bg       = p.a,
  	fg       = p.d,
	black = "#000000",
	gray  = "#564b44",
	yellow   = "#F48C06",
	green 	= "#35800C",
	blue		= "#37007D",
}

lualine = {
  normal = {
	 a = { fg = c.bg, bg = c.yellow, gui = "bold" },
	 b = { fg = c.fg, bg = c.bg },
	 c = { fg = c.fg, bg = c.black },
  },
  insert = {
	 a = { fg = c.bg, bg = c.green, gui = "bold" },
	 b = { fg = c.fg, bg = c.bg },
	 c = { fg = c.fg, bg = c.black },
  },
  visual = {
	 a = { fg = c.bg, bg = c.blue, gui = "bold" },
	 b = { fg = c.fg, bg = c.bg },
	 c = { fg = c.fg, bg = c.black },
  },
  replace = {
	 a = { fg = c.bg, bg = c.red, gui = "bold" },
	 b = { fg = c.fg, bg = c.bg },
	 c = { fg = c.fg, bg = c.black },
  },
  inactive = {
	 a = { fg = c.gray, bg = c.bg, gui = "bold" },
	 b = { fg = c.fg, bg = c.bg },
	 c = { fg = c.fg, bg = c.black },
  },
}

return { palette = p, colors = c, lualine = lualine}
