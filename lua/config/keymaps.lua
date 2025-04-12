-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

---@param keys any[]
local function deleteKeys(keys)
  for i = 1, #keys do
    local current = keys[i]
    vim.keymap.del(current[1], current[2], current[3])
  end
end
deleteKeys({
  -- { { "n" }, "<c-/>" },
  -- { "n", "<Space>ft" },
  -- { "n", "<Space>fT" },
})

if vim.g.vscode then
  local vscode = require("vscode")
  vim.keymap.set("n", "[d", function()
    vscode.action("editor.action.marker.prevInFiles")
  end)
  vim.keymap.set("n", "]d", function()
    vscode.action("editor.action.marker.nextInFiles")
  end)
  vim.keymap.set("n", "<C-/>", function()
    vscode.action("workbench.action.terminal.toggleTerminal")
  end)
end

vim.cmd("cabbrev <expr> w getcmdtype()==':' && getcmdline() == \"'<,'>w\" ? '<c-u>w' : 'w'")
