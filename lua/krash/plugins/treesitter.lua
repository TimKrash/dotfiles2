return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {"c", "rust", "python", "vimdoc", "bash", "lua", "c_sharp", "cpp", "go", "html", "typescript", "javascript", "css" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
        dependencies = {
          { "windwp/nvim-ts-autotag", opts = {} }
        },
      })
    end
  }
}
