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
