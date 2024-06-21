local opts = { noremap = true, silent = true }

local function addDescription(opts, desc)
  local result = {}
  for k,v in pairs(opts, "") do result[k] = v end
  result.desc = desc
  return result
end

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", addDescription(opts, ""))
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- NORMAL --
-- Better window navigation
keymap("n", "<leader>e", ":Lex 30<CR>", addDescription(opts, "Open window navigation"))

-- Clear highlights 
keymap("n", "<leader>nh", ":nohl<CR>", addDescription(opts, "Clear highlighting"))

-- Saving
keymap("n", "<leader>w", ":w<CR>", addDescription(opts, "Save file"))

-- Quitting
keymap("n", "<leader>q", ":q<CR>", addDescription(opts, "Quit from file"))

-- Explorer Menu
keymap("n", "<leader>pv", ":Ex<CR>", addDescription(opts, "Open explorer menu"))

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", addDescription(opts, "Resize window pane up"))
keymap("n", "<C-Down>", ":resize +2<CR>", addDescription(opts, "Resize window pane down"))
keymap("n", "<C-Right>", ":vertical resize -2<CR>", addDescription(opts, "Resize window pane right"))
keymap("n", "<C-Left>", ":vertical resize +2<CR>", addDescription(opts, "Resize window pane left"))

-- Tab edits/close
keymap("n", "<leader>te", ':tabedit', addDescription(opts, "Edit the current tab"))
keymap("n", "<leader>tc", ":tabclose<CR>", addDescription(opts, "Close the current tab"))
keymap("n", "<leader>to", ":tabnew", addDescription(opts, "Open a new tab and specify file"))
keymap("n", "<leader>tn", ":tabn<CR>", addDescription(opts, "Move to the next tab"))
keymap("n", "<leader>tp", ":tabp<CR>", addDescription(opts, "Move to the previous tab"))

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", addDescription(opts, "Move to the next buffer"))
keymap("n", "<S-h>", ":bprevious<CR>", addDescription(opts, "Move to the previous buffer"))

-- Move text up and down
keymap("n", "<S-k>", "<Esc>:m .-2<CR>==gi", addDescription(opts, "Move text line up"))
keymap("n", "<S-j>", "<Esc>:m .+1<CR>==gi", addDescription(opts, "Move text line down"))

-- Pane splitting
keymap("n", "<leader>vs", ":vsp", addDescription(opts, "Split pane vertically"))
keymap("n", "<leader>s", ":sp", addDescription(opts, "Split pane horizontally"))
keymap("n", "<leader>c", ":close<CR>", addDescription(opts, "Close pane"))

-- INSERT --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", addDescription(opts, "Exit insert mode"))

-- VISUAL --
-- Stay in indent mode
keymap("v", "<", "<gv", addDescription(opts, "Shift text left"))
keymap("v", ">", ">gv", addDescription(opts, "Shift text right"))

-- Move text up and down
keymap("v", "<S-j>", ":m .+1<CR>==", addDescription(opts, "Shift text down (visual mode)"))
keymap("v", "<S-k>", ":m .-2<CR>==", addDescription(opts, "Shift text up (visual mode)"))

