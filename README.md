# kickstart.nvim

## Introduction

This is personalised fork of [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim)

This configuration is split into multiple files:
1. `kickstart/core` - Core directory containing main mappings and configurations
2. `kickstart/plugins` - Plugin directory containing plugin configurations
3. `init.lua` - Main entry point for the configuration

## Installation

### Install Neovim

### Install External Dependencies

External Requirements:
- Basic utils: `git`, `make`, `unzip`, C Compiler (`gcc`)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- Clipboard tool (xclip/xsel/win32yank or other depending on platform)
- A [Nerd Font](https://www.nerdfonts.com/): optional, provides various icons
  - if you have it set `vim.g.have_nerd_font` in `init.lua` to true
- Language Setup:
  - If want to write Typescript, you need `npm`
  - If want to write Golang, you will need `go`
  - If want to write Scala, you will need `sbt`
  - etc.


### Install This Configuration

Neovim's configurations are located under the following paths, depending on your OS:

| OS | PATH |
| :- | :--- |
| Linux, MacOS | `$XDG_CONFIG_HOME/nvim`, `~/.config/nvim` |
| Windows (cmd)| `%userprofile%\AppData\Local\nvim\` |
| Windows (powershell)| `$env:USERPROFILE\AppData\Local\nvim\` |


#### Clone kickstart.nvim

Linux and Mac:

```sh
git clone https://github.com/vbrenister/kickstart.nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

