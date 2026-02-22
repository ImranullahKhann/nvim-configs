vim.lsp.enable("codebook")
vim.lsp.enable("gopls")

-- LSP Configuration: This autocommand triggers whenever a Language Server attaches to a buffer.
-- It maps essential IDE features (Definition, Hover, Rename, etc.) as buffer-local shortcuts,
-- ensuring these keys only perform LSP actions when a server is active. It also includes 
-- consistent keybindings for navigating and expanding diagnostic errors and warnings.
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        local set = vim.keymap.set

        -- Hover documentation
        set('n', 'K', vim.lsp.buf.hover, opts)
        -- Go to definition
        set('n', 'gd', vim.lsp.buf.definition, opts)
        -- Go to declaration
        set('n', 'gD', vim.lsp.buf.declaration, opts)
        -- Go to implementation
        set('n', 'gi', vim.lsp.buf.implementation, opts)
        -- Go to type definition
        set('n', 'gt', vim.lsp.buf.type_definition, opts)
        -- Rename symbol
        set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        -- Code actions
        set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
        -- References
        set('n', 'gr', vim.lsp.buf.references, opts)
        -- Format buffer
        set('n', '<leader>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)

        -- Diagnostic Keybindings
        set('n', '[d', vim.diagnostic.goto_prev, opts)
        set('n', ']d', vim.diagnostic.goto_next, opts)
        set('n', '<leader>h', vim.diagnostic.open_float, opts)
    end,
})
