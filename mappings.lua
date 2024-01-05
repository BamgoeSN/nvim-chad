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
    ["<C-u>"] = { "<C-u>zz " },
    ["<C-d>"] = { "<C-d>zz " },

    ["<leader>tr"] = { ":CompetiTest run <CR>", "Run testcases" },
    ["<leader>ta"] = { ":CompetiTest add_testcase <CR>", "Add testcases" },
    ["<leader>te"] = { ":CompetiTest edit_testcase <CR>", "Edit testcases" },
    ["<leader>td"] = { ":CompetiTest edit_testcase <CR>", "Delete testcases" },
    ["<leader>tg"] = { ":CompetiTest receive testcases <CR>", "Receive testcases" },


    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },
    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },
    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },
    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },
    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },
    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },
    ["<leader>ra"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },
    ["<leader>f"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },
    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },
    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },
    ["<leader>q"] = {
      function()
        vim.diagnostic.setloclist()
      end,
      "Diagnostic setloclist",
    },
    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },
    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },
    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },
  },
}

return M
