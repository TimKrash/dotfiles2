local options = {
	relativenumber = true,
	number = true,
	tabstop = 2,
	shiftwidth = 2,
	expandtab = true,
	autoindent = true,
  wrap = false,
  ignorecase = true,
  smartcase = true,
  clipboard = "unnamedplus",
  backspace = "indent,eol,start",
  splitright = true,
  splitbelow = true
}

for k,v in pairs(options) do
	vim.opt[k] = v
end

-- Some useful commands
vim.cmd("let g:netrw_liststyle = 3") -- changes the netrw file directory listing to a tree-structure style
