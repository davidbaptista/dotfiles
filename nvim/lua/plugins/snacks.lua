return {
  "folke/snacks.nvim",
  opts = {
    terminal = {
      win = {
        style = "terminal",
        wo = {
          winblend = 0, -- No transparency
        },
        bo = {},
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
      "<leader>e",
      function()
        Snacks.explorer.open({ cwd = vim.fn.getcwd() })
      end,
      desc = "Explorer Snacks",
    },
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
