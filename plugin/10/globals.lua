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
function _G.nvim_lua_gf_search(v_fpath)
  local fpath = vim.fs.normalize(string.gsub(v_fpath, '[.]', '/'))
  return require('nvim-lua-gf').search_paths_for_file(fpath)
end
