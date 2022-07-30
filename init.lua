-- 基础配置
require("basic")
-- Packer插件管理
require("plugins")
-- 快捷键映射
require("keybindings")
-- 主题设置
require("colorscheme")
-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
require("plugin-config.nvim-treesitter")
require("plugin-config.dashboard")
require("plugin-config.project")
require('plugin-config.code_runner')

-- 内置LSP (新增)
require("lsp.setup")
--require("lsp.cmp")
require("lsp.ui")
--代码格式化
require("lsp.formatter")

