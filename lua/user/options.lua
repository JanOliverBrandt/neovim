local options = {
	mouse = "a",
	encoding = "utf-8",
	tabstop = 2,
	softtabstop = 2,
	shiftwidth = 2,
	-- undodir = "~/.config/nvim/undodir",
	compatible = false,
	termguicolors = true,
	hlsearch = true,
	smartcase = true,
	incsearch = true,
	cursorline = true,
	cursorcolumn = true,
	autoindent = true,
	nu = true,
	relativenumber = true,
	showmatch = true,
	expandtab = true,
	wrap = false,
	errorbells = false,
	smartindent = true,
	swapfile = false,
	undofile = true,
	splitbelow = true,
	splitright = true,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
	vim.opt[k] = v
end

