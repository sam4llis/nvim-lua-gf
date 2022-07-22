-- Options to go add `gf` functionality inside `.lua` files.
vim.opt_local.path:prepend(',' .. vim.fn.stdpath('config') .. '/lua')
vim.opt_local.include = [=[\v<((do|load)file|require)\s*\(?['"]\zs[^'"]+\ze['"]]=]
vim.opt_local.includeexpr = 'v:lua.nvim_lua_gf_search(v:fname)'
