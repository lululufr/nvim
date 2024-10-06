return {
  "nvim-treesitter/nvim-treesitter",


 config = function()
        local tst = require("nvim-treesitter.configs")

        tst.setup({
          ensure_installed = {"lua","javascript", "python", "rust", "yaml"},
          highlight = {enable = true}, 
          indent = {enable = true},
        })

    end

}
