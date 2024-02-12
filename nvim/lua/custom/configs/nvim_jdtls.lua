local default_config = require "plugins.configs.lspconfig"
local jdtls_setup = require "jdtls.setup"
local data_dir = vim.fn.stdpath "data"
local home = os.getenv "HOME"

local jdtls_binary = data_dir .. "/mason/bin/jdtls"
local root_dir = jdtls_setup.find_root { ".git", "mvnw", "gradlew", ".project" }
local project_name = vim.fn.fnamemodify(root_dir, ":p:h:t")
local workspace_dir = home .. "/.cache/jdtls/workspace/" .. project_name

require("jdtls").start_or_attach {
  cmd = {
    jdtls_binary,
    "-data",
    workspace_dir,
  },
  on_attach = function(client, bufnr)
    jdtls_setup.add_commands()
    default_config.on_attach(client, bufnr)
  end,
  capabilities = default_config.capabilities,
}
