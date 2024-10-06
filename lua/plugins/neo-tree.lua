return{   
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        require("neo-tree").setup({
            -- Ici vous pouvez ajouter des options spécifiques si besoin
        })

        -- Keymap pour changer le focus vers la fenêtre de texte
        vim.api.nvim_set_keymap(
            'n', -- mode normal
            '<leader>e', -- la touche que vous voulez pour basculer (ici <leader>e)
            ':Neotree focus<CR>', -- commande pour ouvrir/fermer Neo-tree
            { noremap = true, silent = true } -- options pour éviter le remappage et supprimer l'echo des commandes
        )

        -- Keymap pour revenir à la fenêtre de texte principale
        vim.api.nvim_set_keymap(
            'n', -- mode normal
            '<leader>o', -- la touche pour basculer vers la fenêtre de texte
            '<C-w>p', -- commande pour basculer à la fenêtre précédente
            { noremap = true, silent = true } -- options pour éviter le remappage et supprimer l'echo des commandes
        )
    end
}

