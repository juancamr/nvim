local builtin = require('telescope.builtin')
local keymap = vim.keymap

require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                ["<C-u>"] = false
            },
        },
    }
}

keymap.set('n', '<leader>pf', builtin.find_files, {})
keymap.set('n', '<C-p>', builtin.git_files, {})
-- keymap.set('n', '<leader>ps', builtin.grep_string, {})
keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
keymap.set('n', '<leader>vh', builtin.help_tags, {})
