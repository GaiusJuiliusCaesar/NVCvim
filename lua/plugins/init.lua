-- lua/plugins/init.lua

return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- LSP Plugins
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "ansiblels",
        "bashls",
        "cssls",
        "docker_compose_language_service",
        "dockerls",
        "html",
        "lua_ls",
        "markdownlint",
        "nginx_language_server",
        "powershell_es",
        "pyright",
        "ruff",
        "sqlls",
        "tailwindcss",
        "yamlls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "bash",
        "powershell",
        "python",
        "htmldjango",
        "javascript",
        "typescript",
        "markdown",
      },
    },
  },

  -- CSS Color
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = {
      user_deafult_options = {
        tailwind = true,
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "roobert/tailwindcss-colorizer-cmp.nvim",
        config = true,
      },
    },
    opts = function(_, opts)
      -- original LazyVim kind icon formatter
      local format_kinds = opts.formatting.format
      opts.formatting.format = function(entry, item)
        format_kinds(entry, item) -- add icons
        return require("tailwindcss-colorizer-cmp").formatter(entry, item)
      end
    end,
  },
}
