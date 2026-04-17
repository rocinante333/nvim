local treesitter = require("nvim-treesitter")

treesitter.setup()

local parsers = {
  "bash",
  "dockerfile",
  "go",
  "html",
  "java",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "python",
  "rust",
  "terraform",
  "yaml",
}

treesitter.install(parsers)

vim.api.nvim_create_autocmd("FileType", {
  pattern = parsers,
  callback = function()
    vim.treesitter.start()
    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
  end,
})
