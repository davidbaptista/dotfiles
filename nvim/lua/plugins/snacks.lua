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
              vim.api.nvim_chan_send(vim.bo.channel, "\x0c")
            end,
            mode = "t",
            desc = "Clear terminal",
          },
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
