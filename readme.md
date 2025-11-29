


# Neovim colorscheme `neovim-compline`

A pretty dark and minimalist colorscheme for Neovim.





## Installing



###### Official Neovim plugin manager (version 0.12+) {-}

Add

```lua
    { src = "https://github.com/ctafur80/neovim-compline", name = "compline" },
```

entry in `vim.pack.add({})`. For instance:

```lua
vim.pack.add({
    { src = "https://github.com/ctafur80/neovim-compline", name = "compline" },
})
```

Add after it, in some place:

```lua
require("compline").setup({
    -- Here is the setup
})
```



###### Lazy.nvim {-}

```lua
{
  "TU_USUARIO_GITHUB/compline",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd([[colorscheme compline]])
  end,
}
```








