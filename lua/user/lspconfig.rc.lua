local lsp_installer = require("nvim-lsp-installer")

 function my_temp_attach(client, bufnr)
    if client.name == "tsserver" then
        client.resolved_capabilities.document_formatting = false
    end
end

lsp_installer.on_server_ready(function(server)
    local opts = {
        on_attach = my_temp_attach
    }
    server:setup(opts)
end)

-- Include the servers you want to have installed by default below
local servers = {
  "tsserver",
  "dockerls",
--  "eslint",
  "yamlls",
  "jsonls",
  "jdtls",
  "sumneko_lua",
  "prosemd_lsp",
  "spectral",
  "pylsp",
  "tflint",
  "lemminx",
  "pyright",
  "vimls",
}

for _, name in pairs(servers) do
  local server_is_found, server = lsp_installer.get_server(name)
  if server_is_found and not server:is_installed() then
    print("Installing " .. name)
    server:install()
  end
end
