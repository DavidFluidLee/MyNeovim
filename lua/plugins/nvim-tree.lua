return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- 设置开启/关闭文档树的按键
    vim.keymap.set('n', '<C-t>',":NvimTreeToggle<CR>" )

    -- 启用文档树
    require "nvim-tree".setup {
      -- 应用按键映射
      on_attach = keymaps,
      --排序大小写敏感
      sort_by = "case_sensitive",
      -- 是否显示git状态
      git = {
          enable = true,
      },
      -- 过滤文件
      filters = {
          dotfiles = true, --过滤.开头的隐藏配置文件
          custom = { "node_modules"}, 其它过滤目录

      },
      view = {
          -- 文件浏览器展示件置，左侧：left,右侧:right
          side = "right",
          number = false,-- 行号是否显示
          relativenumber = false,
          signcolumn= "yes", --显示图标
          width = 30
        }
    }
  end
}
