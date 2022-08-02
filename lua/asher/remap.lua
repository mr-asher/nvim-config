local Remap = require("asher.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local tnoremap = Remap.tnoremap
local vnoremap = Remap.vnoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- Quick open netrw
nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")

-- Better Terminal mode
tnoremap("<Esc>", "<C-\\><C-n>")
tnoremap("<C-a>", "<Esc>")

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")

-- next greatest remap ever : asbjornHaland
nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")
nmap("<leader>Y", "\"+Y")

-- Don't get cancelled like theprimagen
inoremap("jk", "<Esc>")
