local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Quote word
keymap.set("n", '<Leader>"', 'ciw"<C-r>""<Esc>') -- Quote word with double quotes

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

-- vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { silent = true })
--
-- vim.api.nvim_create_autocmd("TermOpen", {
--   pattern = "term://*",
--   callback = function()
--     local opts = { buffer = true, silent = true } -- Changed buffer = 0 to buffer = true
--     -- Exit terminal mode and move to the window to the left
--     vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
--     -- Exit terminal mode and move to the window below
--     vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
--     -- Exit terminal mode and move to the window above
--     vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
--     -- Exit terminal mode and move to the window to the right
--     vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
--     -- Exit terminal mode with Esc
--     vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], opts)
--
--     vim.keymap.set("t", "+", "<C-\\><C-n>:vertical resize +5<CR>i", opts)
--     vim.keymap.set("t", "-", "<C-\\><C-n>:vertical resize -5<CR>i", opts)
--   end,
-- })
