require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "", -- can be "hard", "soft" or empty string
  palette_overrides = {},
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})

require('nightcity').setup({
	    -- kabuki or afterlife
    style = 'afterlife', -- The theme comes in two styles: kabuki or afterlife
    terminal_colors = true, -- Use colors used when opening a `:terminal`
    invert_colors = {
        -- Invert colors for the following syntax groups
        cursor = true,
        diff = true,
        error = true,
        search = true,
        selection = false,
        signs = false,
        statusline = true,
        tabline = false,
    },
    font_style = {
        -- Style to be applied to different syntax groups
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
        variables = {},
        search = { bold = true },
    },
    -- Plugin integrations. Use `default = false` to disable all integrations.
    plugins = { default = true },
    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table
    ---@param groups Highlight groups
    ---@param colors ColorScheme
    on_highlights = function(groups, colors) end,
})

-- if you want to get rid of toggling and just set one scheme, you can set here
-- local colorscheme = "gruvbox"
-- vim.cmd('silent! colorscheme gruvbox')
