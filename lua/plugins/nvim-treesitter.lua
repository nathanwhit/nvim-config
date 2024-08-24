return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      textobjects = {
        move = {
          goto_next_start = { ["]i"] = "@function.inner" },
        },
      },
    },
  },
}
