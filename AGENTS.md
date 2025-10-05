# Agent Guidelines for Neovim LazyVim Configuration

## Commands
- **Lint**: `stylua --check .` (check formatting)
- **Format**: `stylua .` (apply formatting)
- **No build/test commands** - this is a Neovim config, not a buildable project

## Code Style
- **Language**: Lua
- **Formatting**: 2 spaces indentation, 120 column width (stylua.toml)
- **Imports**: Use `require("module.path")` for imports
- **Naming**: snake_case for variables/functions, PascalCase for modules
- **Plugins**: Define as tables in `lua/plugins/` with lazy.nvim spec format
- **Comments**: Use `--` for single line, minimal comments unless complex logic
- **Error Handling**: Use `pcall()` for potentially failing operations
- **Types**: No static typing, rely on Lua's dynamic typing
- **Structure**: Config in `lua/config/`, plugins in `lua/plugins/`

## Conventions
- Follow LazyVim defaults and extend via `lua/config/` files
- Use LazyVim's `Util.safe_keymap_set` for key mappings
- Plugin specs return tables with plugin definitions
- Keep config minimal and focused on personal preferences