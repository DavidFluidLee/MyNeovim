--配置按键映射
-- define common options

vim.keymap.set("i", "kj", "<ESC>",opt)

-- 可视模式下，用 `⌘+C` 复制到系统剪贴板 需在iTerm2 Keys Bindings `⌘+C` 选择动作 "Send Hex Code"，并输入 0x03（即 Ctrl+C 的 Hex 值） 
vim.keymap.set('v', '<C-c>', '"+y', { desc = 'Copy to clipboard with Cmd+C' })

-- 普通模式下，用 `⌘+C` 复制到系统剪贴板 需在iTerm2 Keys Bindings `⌘+C` 选择动作 "Send Hex Code"，并输入 0x03（即 Ctrl+C 的 Hex 值） 
vim.keymap.set('n', '<C-c>', '"+y', { desc = 'Copy to clipbaord with Cmd+C' })
