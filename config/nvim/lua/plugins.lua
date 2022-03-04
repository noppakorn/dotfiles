local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Plugins Manager
  use 'tpope/vim-fugitive' -- Git
  use 'wincent/terminus' -- Better integration with terminal
  use 'preservim/nerdtree' -- File explorer
  use 'sheerun/vim-polyglot'
  use 'tpope/vim-sleuth' -- Infer tabstop and shiftwidth from file
  use 'ap/vim-css-color' -- Highlight Color hex
  use 'folke/tokyonight.nvim' -- Tokyo Night Theme
  use 'itchyny/lightline.vim' -- Bottombar
  use 'neovim/nvim-lspconfig' -- LSP Config
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'lambdalisue/suda.vim' -- Read and write file with sudo
end)
