local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {

[[ __      __       .__                                     ____.              ]],
[[/  \    /  \ ____ |  |   ____  ____   _____   ____       |    |____    ____  ]],
[[\   \/\/   // __ \|  | _/ ___\/  _ \ /     \_/ __ \      |    \__  \  /    \ ]],
[[ \        /\  ___/|  |_\  \__(  <_> )  Y Y  \  ___/  /\__|    |/ __ \|   |  \]],
[[  \__/\  /  \___  >____/\___  >____/|__|_|  /\___  > \________(____  /___|  /]],
[[       \/       \/          \/            \/     \/                \/     \/ ]],


}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("o", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.vim <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
-- NOTE: requires the fortune-mod package to work
	-- local handle = io.popen("fortune")
	-- local fortune = handle:read("*a")
	-- handle:close()
	-- return fortune
	return "Jan's nvim configuration"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)

