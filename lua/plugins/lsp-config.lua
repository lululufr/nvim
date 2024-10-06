return{
  {
  "williamboman/mason.nvim",
  config = function()

    require("mason").setup()
  end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "bashls", "ast_grep", "cmake", "dockerls", "html", "jsonls", "phpactor" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
       local lspconfig = require("lspconfig")
      -- Server list

       lspconfig.lua_ls.setup({})
       lspconfig.bashls.setup({})
       lspconfig.ast_grep.setup({})
       lspconfig.cmake.setup({})
       lspconfig.dockerls.setup({})
       lspconfig.html.setup({})
       lspconfig.jsonls.setup({})
       lspconfig.phpactor.setup({})

      -- Keymap
      vim.keymap.set('n', '<space>k', vim.lsp.buf.hover, {})
      vim.keymap.set('n', '<space>a', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.code_action, {})



    end
  }
}
