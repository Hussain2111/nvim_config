# 🚀 Neovim Configuration for Frontend Development

This repository contains my custom Neovim configuration, optimized for frontend development with **React** and **TypeScript**.

## 📦 Plugin Manager

This setup uses **[Packer.nvim](https://github.com/wbthomason/packer.nvim)** for managing plugins.

- **Installation:**
  ```bash
  git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim
  ```

## 🔧 Configuration Structure

```bash
nvim/
├── init.lua                  # Main Neovim configuration
├── lua/sh2111/
│   ├── init.lua              # Initializes Lua modules
│   ├── packer.lua            # Plugin configurations
│   ├── remap.lua             # Custom key mappings
│   └── set.lua               # General settings
└── after/plugin/
    ├── fugitive.lua          # Git integration
    ├── harpoon.lua           # Quick file navigation
    ├── lsp.lua               # Language Server Protocol setup
    ├── telescope.lua         # Fuzzy finder setup
    ├── treesitter.lua        # Syntax highlighting and code parsing
    └── undotree.lua          # Undo history visualizer
```

## ⚡ Key Features

- **LSP Support:** Configured for TypeScript and JavaScript using `tsserver`.
- **Autocomplete:** Powered by `nvim-cmp` for intelligent code completion.
- **Syntax Highlighting:** Enhanced with `nvim-treesitter`.
- **Git Integration:** Using `vim-fugitive` for seamless Git operations.
- **File Navigation:** `telescope.nvim` and `harpoon` for efficient project management.

## 🚀 Setup

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Hussain2111/nvim_config.git ~/.config/nvim
   ```

2. **Install Plugins:**
   Open Neovim and run:
   ```vim
   :PackerSync
   ```

## 🗝️ Key Mappings

Custom keybindings are defined in `lua/sh2111/remap.lua`:
- `<leader>ff` - Find files using Telescope
- `<leader>gg` - Git status via Fugitive
- `<leader>u`  - Toggle undo tree

## 🛠️ LSP & TypeScript Setup

Configured in `after/plugin/lsp.lua`:
- **TypeScript:** Uses `tsserver` for intellisense and linting.
- **Linting & Formatting:** Integrated with ESLint and Prettier.

## 📝 Future Improvements

- Improve performance with lazy loading plugins.
- Add custom snippets for React components.
- Enhance LSP diagnostics with better UI.

## 🙌 Contributing

Feel free to fork this repository and submit pull requests with improvements.

---

*Crafted with ❤️ for an efficient coding experience.*

