-- lua/configs/lspconfig.lua

-- local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local capabilities = require("nvchad.configs.lspconfig").capabilities

-- load defaults i.e lua_lsp
-- local nvlsp = require "nvchad.configs.lspconfig"
-- local lspconfig = require "lspconfig"

-- Define the path to PowerShell Editor Services
-- local bundle_path = vim.fn.expand "~/.config/nvim/customlsp"

-- nvlsp.defaults()
require("nvchad.configs.lspconfig").defaults()

-- LSP Servers
local servers = {
  "ansiblels",
  "bashls",
  "cssls",
  "docker_compose_language_service",
  "dockerls",
  "html",
  "lua_ls",
  "nginx_language_server",
  "powershell_es",
  "pyright",
  "ruff",
  "sqlls",
  "tailwindcss",
  "yamlls",
}

-- lsps with default config
for _, server in ipairs(servers) do
  vim.lsp.config(server, {})
end

-- Enable all
vim.lsp.enable(servers)

-- Configure powershell_es
-- lspconfig.powershell_es.setup {
--   bundle_path = bundle_path,
--   on_attach = on_attach,
--   capabilities = capabilities,
--   settings = {
--     powershell = {
--       codeFormatting = {
--         Preset = "OTBS", -- One True Brace Style for code formatting
--       },
--     },
--   },
-- }

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
