return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = { enable = false },
      textobjects = {
        move = {
          goto_next_start = { ["]i"] = "@function.inner" },
        },
      },
    },
  },
}
