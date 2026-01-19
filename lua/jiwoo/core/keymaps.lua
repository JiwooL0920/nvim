vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "ii", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- opencode.nvim keymaps
keymap.set({ "n", "t" }, "<leader>oo", function()
  require("opencode").toggle()
end, { desc = "Toggle opencode" })

keymap.set({ "n", "x" }, "<leader>oa", function()
  require("opencode").ask("@this: ")
end, { desc = "Ask opencode with context" })

keymap.set({ "n", "x" }, "<leader>os", function()
  require("opencode").select()
end, { desc = "Opencode select action" })

keymap.set({ "n", "x" }, "go", function()
  return require("opencode").operator("@this ")
end, { desc = "Opencode operator", expr = true })

keymap.set({ "n", "x" }, "<leader>or", function()
  require("opencode").prompt("review")
end, { desc = "Opencode review" })

keymap.set({ "n", "x" }, "<leader>oe", function()
  require("opencode").prompt("explain")
end, { desc = "Opencode explain" })

keymap.set({ "n", "x" }, "<leader>of", function()
  require("opencode").prompt("fix")
end, { desc = "Opencode fix" })

keymap.set({ "n", "x" }, "<leader>ot", function()
  require("opencode").prompt("test")
end, { desc = "Opencode generate tests" })

keymap.set({ "n", "x" }, "<leader>od", function()
  require("opencode").prompt("document")
end, { desc = "Opencode document" })

keymap.set({ "n", "x" }, "<leader>oi", function()
  require("opencode").prompt("implement")
end, { desc = "Opencode implement" })

keymap.set("n", "<leader>on", function()
  require("opencode").command("session.new")
end, { desc = "Opencode new session" })

keymap.set("n", "<leader>ol", function()
  require("opencode").command("session.list")
end, { desc = "Opencode list sessions" })
