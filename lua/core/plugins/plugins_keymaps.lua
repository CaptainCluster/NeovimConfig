-- Configurations for the trouble.nvim plugin
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)


-- NERDTree config
vim.api.nvim_set_keymap("n", "<C-n>", ":NERDTree<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-t>", ":NERDTreeToggle<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<C-f>", ":NERDTreeFind<CR>", {noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>ff", "<cmd>Telescope find_files<CR>", { noremap = true, silent = true })	-- \ff 


-- Telescope config
vim.g.dashboard_default_executive = "telescope"
vim.g.dashboard_custom_header = {
    ' ',
    ' '
}
vim.api.nvim_set_keymap("n", "<leader>bd", ":Dashboard<CR>", { noremap = true, silent = true })
vim.cmd('autocmd FileType dashboard :normal <CR>')
