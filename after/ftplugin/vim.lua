-- Options to go add `gf` functionality inside `.vim` files.
vim.opt_local.path:prepend(vim.fn.stdpath('config'))
vim.opt_local.include = [=[\v<((do|load)file|require)\s*\(?['"]\zs[^'"]+\ze['"]]=]
vim.opt_local.includeexpr = 'v:lua.Lua_GF_Search(v:fname)'
