-- ~/.config/nvim/lua/plugins/colors.lua

return {
  {
    "brenoprata10/nvim-highlight-colors",
    -- Optional: lazy-load the plugin on commands or filetypes
    -- cmd = { "HighlightColorsOn", "HighlightColorsOff", "HighlightColorsToggle" },
    -- event = "VeryLazy", -- Or "ColorScheme" if you want it to load with your colorscheme

    -- Configuration for nvim-highlight-colors
    opts = {
      -- Default render style: 'background', 'foreground', or 'virtual'
      render = "background",

      -- Set virtual symbol (only if render is 'virtual')
      -- virtual_symbol = '■',
      -- virtual_symbol_prefix = '',
      -- virtual_symbol_suffix = ' ',
      -- virtual_symbol_position = 'inline',

      -- Enable highlighting for different color formats
      enable_hex = true,
      enable_short_hex = true, -- e.g., #fff
      enable_rgb = true,
      enable_hsl = true,
      enable_names = true, -- e.g., 'red', 'blue'
      enable_tailwind = false, -- Set to true if you want Tailwind CSS color highlighting
      enable_css_variables = false, -- Set to true if you use CSS variables

      -- Exclude certain filetypes (optional)
      -- exclude_filetypes = { "NvimTree", "lazy", "mason", "TelescopePrompt" },

      -- You can also integrate with nvim-cmp for color previews in completion
      -- See the plugin's README for more advanced configuration
      -- (e.g., for nvim-cmp or lspkind integration)
    },

    -- Ensure termguicolors is enabled for true color support
    config = function(_, opts)
      vim.opt.termguicolors = true
      require("nvim-highlight-colors").setup(opts)
    end,
  },
}
