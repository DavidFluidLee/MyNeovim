-- lualine.lua
-- 在 lualine 中，显示区域被分成了 6 个部分，分被用 A,B,C,X,Y,Z 组成。
return {
    {
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup({
	            options = {
		        theme = "auto",
		        component_separators = { right = "|" },},
                extensions = { "nvim-tree", "toggleterm" }
            })
        end
    }
}

