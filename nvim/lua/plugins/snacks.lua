return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        keys = {
          nav_l = false,
          clear = {
            "<C-l>",
            function(self)
              vim.fn.feedkeys("clear\n", "n")
            end,
            mode = "t",
            desc = "Clear terminal",
          },

          --          term_left = { "<M-Left>", "<C-\\><C-n>b", mode = "t", desc = "Word left" },
          --         term_right = { "<M-Right>", "<C-\\><C-n>w", mode = "t", desc = "Word right" },
          --        term_del = { "<M-BS>", "<C-w>", mode = "t", desc = "Delete word" },
        },
      },
    },
  },
  keys = {
    {
      "<leader>t",
      function()
        Snacks.terminal.toggle()
      end,
      desc = "Toggle Terminal",
    },
    {
      "<leader>T",
      function()
        Snacks.terminal.open()
      end,
      desc = "New Terminal",
    },
  },
}
