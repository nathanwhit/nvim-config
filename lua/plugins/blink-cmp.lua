return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
      },
      completion = {
        accept = {
          auto_brackets = {
            kind_resolution = {
              blocked_filetypes = { "typescript", "javascript", "typescriptreact", "javascriptreact", "vue" },
            },
            semantic_token_resolution = {
              blocked_filetypes = { "typescript", "javascript", "java" },
            },
          },
        },
      },
    },
  },
}
