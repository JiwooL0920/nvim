return {
  "NickvanDyke/opencode.nvim",
  dependencies = {
    { "folke/snacks.nvim", opts = { input = {}, picker = {}, terminal = {} } },
  },
  config = function()
    local opencode_cmd = "NODE_EXTRA_CA_CERTS=/Users/u1002349/usr/local/share/ca-certificates/ca-certificates.crt opencode --port"
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      server = {
        start = function()
          require("opencode.terminal").start(opencode_cmd)
        end,
        stop = function()
          require("opencode.terminal").stop()
        end,
        toggle = function()
          require("opencode.terminal").toggle(opencode_cmd)
        end,
      },
    }
    vim.o.autoread = true

    vim.keymap.set("n", "<leader>os", function() require("opencode").select_session() end, { desc = "OpenCode: Select session" })
    vim.keymap.set("n", "<leader>on", function() require("opencode").command("session.new") end, { desc = "OpenCode: New session" })
    vim.keymap.set("n", "<leader>oo", function() require("opencode").select() end, { desc = "OpenCode: Command palette" })
  end,
}
