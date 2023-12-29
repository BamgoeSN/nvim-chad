---@type MappingsTable
local M = {}

M.general = {
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!
M.custom = {
  n = {
    ["<C-u>"] = { "<C-u>zz "},
    ["<C-d>"] = { "<C-d>zz "},
    ["<leader>tr"] = { ":CompetiTest run <CR>", "Run testcases" },
    ["<leader>ta"] = { ":CompetiTest add_testcase <CR>", "Add testcases" },
    ["<leader>te"] = { ":CompetiTest edit_testcase <CR>", "Edit testcases" },
    ["<leader>td"] = { ":CompetiTest edit_testcase <CR>", "Delete testcases" },
    ["<leader>tg"] = { ":CompetiTest receive testcases <CR>", "Receive testcases" },
  },
}

return M
