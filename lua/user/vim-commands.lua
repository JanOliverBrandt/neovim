-- vim.cmd('source Plug.vim')
vim.cmd('colorscheme onedarker')
vim.cmd('syntax enable')

-- Custom vim commands
vim.cmd('command RemoveCR execute \"s/^M$//\"')
vim.cmd('command ToLinuxFile execute \"set ff=unix\"')
vim.cmd('command Hover execute \":lua vim.lsp.buf.hover()<CR>\"')

-- Colors of Autocompletion
vim.cmd('highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080')
vim.cmd('highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6')
vim.cmd('highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6')
vim.cmd('highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE')
vim.cmd('highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0')
vim.cmd('highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0')
vim.cmd('highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4')
vim.cmd('highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4')
vim.cmd('highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4')
