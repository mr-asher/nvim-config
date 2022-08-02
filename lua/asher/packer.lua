-- This file can be loaded by calling `lua require("plugins")` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  -- Git integration
  use { "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim" }

  -- TJ created lodash of neovim
  use "nvim-lua/plenary.nvim"
  use "nvim-lua/popup.nvim"

  -- Awesome new fuzzy finder
  use "nvim-telescope/telescope.nvim"
  use "BurntSushi/ripgrep"
  use "sharkdp/fd"
  use "kyazdani42/nvim-web-devicons"

  -- Colour schemes
  use "folke/tokyonight.nvim"
  use "navarasu/onedark.nvim"
  use "gruvbox-community/gruvbox"
  use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})
  use "nvim-treesitter/playground"
  use "romgrk/nvim-treesitter-context"

  -- LSP manager
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use "williamboman/mason-lspconfig.nvim"
  use "mfussenegger/nvim-dap"
  use "jose-elias-alvarez/null-ls.nvim"

  -- LSP Integration
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-cmdline"
  use "hrsh7th/nvim-cmp"
  use {"tzachar/cmp-tabnine", run = "./install.sh" }
  use "onsails/lspkind-nvim"
  use "glepnir/lspsaga.nvim"
  use "simrat39/symbols-outline.nvim"
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rcarriga/nvim-dap-ui"
  use "theHamsta/nvim-dap-virtual-text"

  -- Status line
  use "nvim-lualine/lualine.nvim"

  -- Better tab labels
  use { "akinsho/bufferline.nvim", tag = "v2.*", requires = "kyazdani42/nvim-web-devicons" }
end)
