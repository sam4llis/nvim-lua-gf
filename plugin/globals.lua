if vim.fn.has('nvim-0.7.0') ~= 1 then
  vim.api.nvim_err_writeln('The plugin `nvim-lua-gf` requires Neovim 0.7.0.')
  return
end

--
-- @desc
--   Function (global) that searches for the virtual filepath `v_fpath` inside
--   Lua and Neovim modules.
-- @param v_fpath: string
--   The virtual filepath to be searched for. This is the argument found inside
--   `dofile() | loadfile() | require()` statements.
-- @return: string | nil
--   A real filepath as a string if `v_fpath` can be found as a Lua or Neovim
--   module. Otherwise, `nil` is returned.
--
function _G.Lua_GF_Search(v_fpath)
  local fpath = string.gsub(v_fpath, '[.]', '/')
  return require('nvim-lua-gf').search_paths_for_file(fpath)
end
