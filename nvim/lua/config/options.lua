vim.g.mapleader = " "

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.opt.number = true

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 0
vim.opt.laststatus = 0
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 4
vim.opt.wrap = false
vim.opt.backspace = { "start", "eol", "indent" }
vim.opt.path:append({ "**" })
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.splitkeep = "cursor"
vim.lsp.inlay_hint.enable = false
vim.opt.list = true -- enable the below listchars
vim.opt.listchars = { tab = "▸ ", trail = "·", nbsp = "␣" }
-- Add asterisks in block comments
vim.opt.formatoptions:append({ "r" })
vim.g.lazyvim_eslint_auto_format = false
vim.opt.swapfile = false -- Don't use swapfile
vim.opt.showmatch = true

vim.opt.hidden = true -- Enable background buffers
vim.opt.history = 100 -- Remember N lines in history
vim.opt.synmaxcol = 240 -- Max column for syntax highlight
vim.opt.updatetime = 250 -- ms to wait for trigger an event
