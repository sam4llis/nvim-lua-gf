# nvim-lua-gf

A utility plugin which extends `gf` functionality in Lua files. Written in Lua
and requires Neovim 0.8.

![nvim-lua-gf example functionality.](https://github.com/sam4llis/nvim-lua-gf/blob/main/assets/gifs/example.gif)

nvim-lua-gf extends the functionality of the `gf` (go-to file) command within
Lua files by enabling it to find 'virtual file paths' - i.e., the argument found
within `require()`, `dofile()`, and `loadfile()` statements.


## Installation

You can install nvim-lua-gf with your favourite package manager. As an example,
for [vim-plug](https://github.com/junegunn/vim-plug):

```
Plug 'sam4llis/nvim-lua-gf'
```


## Features

By default, nvim-lua-gf searches for the virtual file path within built-in Lua
modules as well as within Neovim runtime paths. If a direct module name can be
found from the virtual file path, `gf` will open this file.

<!-- TODO: Add GIF -->

If a direct module name does not exist, nvim-lua-gf will try to find an
`init.lua` file inside the virtual file path directory.

<!-- TODO: Add GIF -->

If the target file path can not be found using the above methods, nvim-lua-gf
will display the same error messages as the regular `gf` command.


## Usage

nvim-lua-gf can be initialised using the following command within an
`after/ftplugin/lua.{lua, vim}` file.

```
require('nvim-lua-gf').setup()
```
