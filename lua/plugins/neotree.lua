return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
    keys = {
        -- Global keymap to toggle Neo-tree (optional, can be done here or with vim.keymap.set)
        { "<leader>e", "<Cmd>Neotree toggle<CR>", desc = "Toggle Neotree" },
    },
  }
}
