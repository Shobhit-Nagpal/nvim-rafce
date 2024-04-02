<div align="center">

# Nvim-Rafce

##### Write boilerplate React components with one command

[![Lua](https://img.shields.io/badge/Lua-blue.svg?style=for-the-badge&logo=lua)](http://www.lua.org)
[![Neovim](https://img.shields.io/badge/Neovim%200.5+-green.svg?style=for-the-badge&logo=neovim)](https://neovim.io)

<img alt="Nvim-Rafce Logo" height="280" src="/assets/nvim-rafce-logo.png" />
</div>

## TOC

- [Problem](#Problem)
- [Solution](#Solutions)
- [Installation](#Installation)
- [Commands](#Commands)
- [Socials](#Socials)

## Problem

1. You left behind VSCode and installed Neovim and are new to learning Vim motions, remaps, plugins, etc. You saw either yourself or other people using the RAFCE snippet to create boilerplate React component code. You want to save time by having something similar for Neovim.

## Solution

1. The ability to write a command in Neovim and have boilerplate component code on the fly.

## Installation

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

--Packer:

```lua
use 'Shobhit-Nagpal/nvim-rafce'
```

--Vim-plug:

```lua
Plug 'Shobhit-Nagpal/nvim-rafce'
```

## Commands

There are 3 different commands to use depending on your needs:

**i.** Rafce (React functional component with arrow function and export at bottom)

```vim
:Rafce
```

```jsx
import React from "react";

const Component = () => {
  return <div>Component</div>;
};

export default Component;
```

**ii.** Rfce (React functional component with export at bottom)

```vim
:Rfce
```

```jsx
import React from "react";

function Component() {
  return <div>Component</div>;
}

export default Component;
```

**iii.** Rfc (React functional component)

```vim
:Rfc
```

```jsx
import React from "react";

export default function Component() {
  return <div>Component</div>;
}
```

## Socials

- [Twitter](https://twitter.com/shbhtngpl)
