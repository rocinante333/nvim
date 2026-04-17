vim.loader.enable() -- faster bootup
require("config.options")

vim.pack.add({
  { src = 'https://github.com/ellisonleao/gruvbox.nvim' },
  { src = 'https://github.com/cryptomilk/nightcity.nvim' },
})
require("plugins.colorscheme")

--Plug('nvim-lualine/lualine.nvim') --statusline
--Plug('nvim-tree/nvim-web-devicons') --pretty icons
vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons', -- required dependency by a lot of other plugins
    'https://github.com/nvim-lualine/lualine.nvim'
})
require("plugins.lualine")

vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.icons' },
})
require('mini.icons').setup()

--Plug('folke/which-key.nvim') --mappings popup
vim.pack.add({
  { src = 'https://github.com/folke/which-key.nvim' },
})
require("plugins.which-key")

--Plug('romgrk/barbar.nvim') --bufferline
vim.pack.add({
  { src = 'https://github.com/romgrk/barbar.nvim' },
})
require("plugins.barbar")

--Plug('goolord/alpha-nvim') --pretty startup
vim.pack.add({
  { src = 'https://github.com/goolord/alpha-nvim' },
})
require("plugins.alpha")

--Plug('nvim-treesitter/nvim-treesitter') --improved syntax
vim.pack.add({
  { src = 'https://github.com/nvim-treesitter/nvim-treesitter' },
})
require("plugins.treesitter")

--Plug('mfussenegger/nvim-lint') --async linter
vim.pack.add({
  { src = 'https://github.com/mfussenegger/nvim-lint' },
})
require("plugins.nvim-lint")

--Plug('nvim-tree/nvim-tree.lua') --file explorer
vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
})
require("plugins.nvim-tree")

--Plug('windwp/nvim-autopairs') --autopairs 
vim.pack.add({
  { src = 'https://github.com/windwp/nvim-autopairs' },
})
require("plugins.autopairs")

--Plug('lewis6991/gitsigns.nvim') --git
vim.pack.add({
  { src = 'https://github.com/lewis6991/gitsigns.nvim' },
})
require("plugins.gitsigns")

--Plug('numToStr/Comment.nvim') --easier comments
vim.pack.add({
  { src = 'https://github.com/numToStr/Comment.nvim' },
})
require("plugins.comment")

-- Replaces norcalli
--Plug('norcalli/nvim-colorizer.lua') --color highlight
vim.pack.add({
    "https://github.com/catgoose/nvim-colorizer.lua"
    })
--require("colorizer").setup() --from default github
require("plugins.colorizer")

-- Investigate telescope instead
--Plug('ibhagwan/fzf-lua') --fuzzy finder and grep
vim.pack.add({
  { src = 'https://github.com/ibhagwan/fzf-lua' },
})
require("plugins.fzf-lua")

--Plug('numToStr/FTerm.nvim') --floating terminal
vim.pack.add({
  { src = 'https://github.com/numToStr/FTerm.nvim' },
})
require("plugins.fterm")

--Plug('MeanderingProgrammer/render-markdown.nvim') --render md inline
vim.pack.add({
  { src = 'https://github.com/MeanderingProgrammer/render-markdown.nvim' },
})
require("plugins.render-markdown")

--Plug('folke/twilight.nvim') --surrounding dim
vim.pack.add({
  { src = 'https://github.com/folke/twilight.nvim' },
})
require("plugins.twilight")

require("config.theme") -- see if we can remove or need with theme switching
require("config.mappings")
require("config.autocmd")

load_theme()
