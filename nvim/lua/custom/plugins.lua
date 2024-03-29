local plugins = {
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
      return require "custom.configs.formatter"
    end
  },
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.lint"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "mypy",
        "ruff",
        "pyright",

        "eslint-lsp",
        "prettier",
        "typescript-language-server",

        "java-debug-adapter",
        "java-test",

        "clangd",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "mfussenegger/nvim-jdtls",
    ft = "java",
    dependencies = "neovim/nvim-lspconfig",
    config = function()
      require "custom.configs.nvim_jdtls"
    end,
  },
}

return plugins;
