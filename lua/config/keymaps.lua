-- disable default keymap
-- 删除普通模式和终端模式下的 <C-h> 映射
vim.keymap.del({ "n", "t" }, "<C-h>")
-- 删除普通模式和终端模式下的 <C-j> 映射
vim.keymap.del({ "n", "t" }, "<C-j>")
-- 删除普通模式和终端模式下的 <C-k> 映射
vim.keymap.del({ "n", "t" }, "<C-k>")
-- 删除普通模式和终端模式下的 <C-l> 映射
vim.keymap.del({ "n", "t" }, "<C-l>")
-- 删除普通模式、插入模式和可视模式下的 <A-j> 映射
vim.keymap.del({ "n", "i", "v" }, "<A-j>")
-- 删除普通模式、插入模式和可视模式下的 <A-k> 映射
vim.keymap.del({ "n", "i", "v" }, "<A-k>")
-- 删除普通模式下的 <S-h> 映射
vim.keymap.del("n", "<S-h>")
-- 删除普通模式下的 <S-l> 映射
vim.keymap.del("n", "<S-l>")

-- alt + hjkl 窗口之间跳转，添加描述信息以便 which-key 使用
vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, silent = true, desc = "Go to Left Window" })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, silent = true, desc = "Go to Lower Window" })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, silent = true, desc = "Go to Upper Window" })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, silent = true, desc = "Go to Right Window" })

vim.keymap.set("n", "q", "<Nop>", { silent = true })

-- 切换窗口
vim.keymap.set(
  "n",
  "<leader>ww",
  "<cmd>lua require('nvim-window').pick()<CR>",
  { noremap = true, silent = true, desc = "Pick Window" }
)

-- System clipboard
vim.keymap.set("v", "<leader>y", [["*y]], { noremap = true, silent = true, desc = "Yank to system clipboard (visual)" })
vim.keymap.set("n", "<leader>y", [["*y]], { noremap = true, silent = true, desc = "Yank to system clipboard (normal)" })
vim.keymap.set(
  "n",
  "<leader>Y",
  [["*Y]],
  { noremap = true, silent = true, desc = "Yank line to system clipboard (normal)" }
)
vim.keymap.set(
  "v",
  "<leader>p",
  [["*p]],
  { noremap = true, silent = true, desc = "Paste from system clipboard (visual)" }
)
vim.keymap.set(
  "n",
  "<leader>p",
  [["*p]],
  { noremap = true, silent = true, desc = "Paste from system clipboard (normal)" }
)
vim.keymap.set(
  "n",
  "<leader>P",
  [["*P]],
  { noremap = true, silent = true, desc = "Paste before from system clipboard (normal)" }
)

-- 垂直分割终端
vim.keymap.set(
  "n",
  "<Leader>t-",
  ":ToggleTerm direction=vertical<CR>",
  { noremap = true, silent = true, desc = "Toggle Vertical Terminal" }
)
-- 水平分割终端
vim.keymap.set(
  "n",
  "<Leader>tt",
  ":ToggleTerm 1 direction=horizontal<CR>",
  { noremap = true, silent = true, desc = "Toggle Horizontal Terminal" }
)
-- 打开特定终端
vim.keymap.set("n", "<Leader>t1", ":ToggleTerm 1<CR>", { noremap = true, silent = true, desc = "Toggle Terminal 1" })
vim.keymap.set("n", "<Leader>t2", ":ToggleTerm 2<CR>", { noremap = true, silent = true, desc = "Toggle Terminal 2" })
vim.keymap.set("n", "<Leader>t3", ":ToggleTerm 3<CR>", { noremap = true, silent = true, desc = "Toggle Terminal 3" })
vim.keymap.set("n", "<Leader>t4", ":ToggleTerm 4<CR>", { noremap = true, silent = true, desc = "Toggle Terminal 4" })
-- 浮动终端
vim.keymap.set(
  "n",
  "<leader>tf",
  ":ToggleTerm 9 direction=float<CR>",
  { noremap = true, silent = true, desc = "Toggle Float Terminal" }
)
