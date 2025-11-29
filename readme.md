


# Neovim colorscheme `neovim-compline`

A pretty dark and minimalist colorscheme for Neovim.





## Installing

### Lazy.nvim
```lua
{
  "TU_USUARIO_GITHUB/compline",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme compline]])
  end,
}
