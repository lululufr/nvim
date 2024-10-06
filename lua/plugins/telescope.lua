return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',  -- ou utilise 'branch = "0.1.x"' si nécessaire
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        local ts = require("telescope.builtin")

        -- Configurer les raccourcis
        vim.keymap.set('n', '<leader><leader>', ts.find_files, {})
        vim.keymap.set('n', '<leader>f', ts.live_grep, {})
    end
},
{
  "nvim-telescope/telescope-ui-select.nvim",
  config = function()
    require("telescope").setup({
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
          }
        }
      }
    })
    require("telescope").load_extension("ui-select")
    end
  },

}
