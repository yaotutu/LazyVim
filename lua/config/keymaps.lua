-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- 删除普通模式和终端模式下的 <C-h> 映射
vim.keymap.del({ 'n', 't' }, '<C-h>')

-- 删除普通模式和终端模式下的 <C-j> 映射
vim.keymap.del({ 'n', 't' }, '<C-j>')

-- 删除普通模式和终端模式下的 <C-k> 映射
vim.keymap.del({ 'n', 't' }, '<C-k>')

-- 删除普通模式和终端模式下的 <C-l> 映射
vim.keymap.del({ 'n', 't' }, '<C-l>')
-- 删除普通模式、插入模式和可视模式下的 <A-j> 映射
vim.keymap.del({ 'n', 'i', 'v' }, '<A-j>')

-- 删除普通模式、插入模式和可视模式下的 <A-k> 映射
vim.keymap.del({ 'n', 'i', 'v' }, '<A-k>')

-- 删除普通模式下的 <S-h> 映射
vim.keymap.del('n', '<S-h>')

-- 删除普通模式下的 <S-l> 映射
vim.keymap.del('n', '<S-l>')

-- alt + hjkl 窗口之间跳转，添加描述信息以便 which-key 使用
vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, silent = true, desc = "Go to Left Window" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, silent = true, desc = "Go to Lower Window" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, silent = true, desc = "Go to Upper Window" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, silent = true, desc = "Go to Right Window" })
