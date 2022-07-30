local packer = require("packer")
packer.startup({
  function(use)
  -- packer可以管理自身
  use("wbthomason/packer.nvim")
  --插件列表
  use("folke/tokyonight.nvim")
  -- nvim-tree
  use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
  -- bufferline
  use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
  -- lualine
  use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
  use("arkav/lualine-lsp-progress")
  -- telescope
  use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
  -- treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  -- dashboard-nvim (新增)
  use({"glepnir/dashboard-nvim", commit = "a36b3232c98616149784f2ca2654e77caea7a522"})
  -- project
  use("ahmedkhalf/project.nvim")
--------------------- LSP --------------------
  use({ "williamboman/nvim-lsp-installer", commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0" })
  -- Lspconfig
  use({ "neovim/nvim-lspconfig" })
-- 补全引擎
  --use("hrsh7th/nvim-cmp")
  -- snippet 引擎
  --use("hrsh7th/vim-vsnip")
  -- 补全源
  --use("hrsh7th/cmp-vsnip")
  --use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
  --use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
  --use("hrsh7th/cmp-path") -- { name = 'path' }
  --use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
  -- github 补全
  --use("github/copilot.vim")

  --coc.nvim补全
  use("neoclide/coc.nvim")

  -- 常见编程语言代码段
  --use("rafamadriz/friendly-snippets")

  -- 代码格式化 (新增)
  use("mhartington/formatter.nvim")

  --code runner
  --use("pu-007/CodeRunner.nvim")
  --use("grecodavide/coderunner.nvim")
  --use("thinca/vim-quickrun")
  use({ 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' })

end,
config = {
  --并发数限制
  max_jobs = 16,
  --自定义源
  git = {
    -- default_url_format = "https://gitcode.net/mirrors/%s",
    -- default_url_format = "https://hub.おうか.tw/%s",
    },
  },
})

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
    [[
      augroup packer_user_config
      autocmd!
      autocmd BufWritePost plugins.lua source <afile> | PackerSync
      augroup end
    ]]
)
