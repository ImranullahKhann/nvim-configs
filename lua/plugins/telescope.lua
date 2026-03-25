return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function() 
        vim.keymap.set('n', '<space>fd', require('telescope.builtin').find_files)
        vim.keymap.set('n', '<space>en', function()
            require('telescope.builtin').find_files {
                cwd = vim.fn.stdpath("config")
            }
        end)
        vim.keymap.set('n', '<space>fg', require('telescope.builtin').live_grep, {})
    end,
}
