require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Horizontal terminal at 65% height
map({ "n", "t" }, "<A-h>", function()
  require("nvchad.term").toggle {
    pos = "sp", -- "sp" for horizontal split (like :split)
    id = "horizTerm", -- unique ID to keep the same terminal
    size = 0.65, -- 65% of screen height
  }
end, { desc = "Toggle horizontal terminal (65% height)" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
