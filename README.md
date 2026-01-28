# NeoVim Configuration 

> This configaration is based off **The Package Manager [Lazy](https://github.com/folke/lazy.nvim)** and also the file is structured as the lazy's stuctured filing system for easier management.

## Plugins:

### Appearance/UI:

* [Kanagawa Theme](https://github.com/rebelot/kanagawa.nvim/)
* [Alpha-Nvim](https://github.com/goolord/alpha-nvim)
* [LuaLine](https://github.com/nvim-lualine/lualine.nvim)

### File Navigation & Searching:

* [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  
  - `Ctrl+F` to Find files.
  - `Space FG` to Fuzzy Find in the current directory.
  - `Space D` to open Diagnostics panel.

* [NeoTree](https://github.com/nvim-neo-tree/neo-tree.nvim)
  
  - `Alt+B` to Open/Close NeoTree On Right.
  - `Alt-F` to Focus on NeoTree.

### LSP/Diagnostics:
  
* [None-LS (Null-LS)](https://github.com/nvimtools/none-ls.nvim)
* [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
* [Mason](https://github.com/mason-org/mason.nvim)
* [Mason-lspconfig](https://github.com/mason-org/mason-lspconfig.nvim)

### Completion/Autocomplete Engine:

* [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
* [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)

### Snippts:

* [LuaSnip](https://github.com/L3MON4D3/LuaSnip)

### AI Assistance:
* [Windsurf (Codeium)](https://github.com/Exafunction/windsurf.nvim)

### QOL Utilities:

* [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
* [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
* [vim-visual-multi](https://github.com/mg979/vim-visual-multi)
* [lorem.nvim](https://github.com/derektata/lorem.nvim)
* [mini.hipatterns](https://github.com/nvim-mini/mini.hipatterns)

## Installation:

Note: `git` need to pre-installed. 

### Linux/MacOS

```bash
git clone https://github.com/5upro/config-nvim
mv config-nvim ~/.config/nvim
```

### Windows (PowerShell 7)

```bash
git clone https://github.com/5upro/config-nvim
mv config-nvim ~\AppData\Local\nvim
```

If you have your `XDG_CONFIG_HOME` set to `~\.config` then use this

> To check your `XDG_CONFIG_HOME` value use `$env:XDG_CONFIG_HOME` : <br>
> If, it returns `C:\Users\YOUR_NAME\.config` or `C:\SOME\OTHER\PATH` its set. <br>
> Otherwise, if it returns nothing then it's unset. 

```bash
mv config-nvim ~\.config\nvim
```
