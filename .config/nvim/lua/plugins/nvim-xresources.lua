return {
  'martineausimon/nvim-xresources',
  lazy = false,
  priority = 1000,
  config = function()
    require('nvim-xresources').setup({
      xresources_path = os.getenv("HOME") .. '/.Xresources',
		auto_light = {
		  enable = false,
      },
    })
  end
}
