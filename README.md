<div align="center">

# Nvim-Rafce
##### Write boilerplate components with one command

[![Lua](https://img.shields.io/badge/Lua-blue.svg?style=for-the-badge&logo=lua)](http://www.lua.org)
[![Neovim](https://img.shields.io/badge/Neovim%200.5+-green.svg?style=for-the-badge&logo=neovim)](https://neovim.io)

</div>

## Problem:

1. You left behind VSCode and installed Neovim and are new to learning Vim motions, remaps, plugins, etc. You saw either yourself or other people using the RFCE snippet to create boilerplate code. You want to save time by having something similar for Neovim.

## Solution:

1. The ability to write a command in Neovim and have boilerplate component code on the fly.

## Installation:

Installation can be done in 2 ways:

### 1. Manually

Run the following commands to add nvim-rafce manually

1. Clone repository

```bash
git clone git@github.com:Shobhit-Nagpal/nvim-rafce.git
```

2. Navigate to your neovim config directory

3. In your init.lua or if you have a after/plugin directory, create a file called rafce.lua and add the following lines:

```lua
vim.opt.runtimepath:append('/path/to/nvim-rafce')
local rafce = require('rafce')
```

4. Source the file

```vim
:so
```

### 2. Plugin manager
