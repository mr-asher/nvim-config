-- Set node for editor.
-- This doesn't work :(
local node_path = '/Users/jaleslie/.nvm/versions/node/v19.1.0/bin/node'
vim.g.node_host_prog = node_path
vim.cmd("let $PATH = '" .. node_path .. ":' . $PATH")

-- Set python enviornment for editor.
vim.g.python3_host_prog = '/Users/jaleslie/.pyenv/versions/nvim-python3/bin/python'
