# Arrow Shorthand

- This plugin is currently broken. Arrow functions can take many forms if whitespace is relevant, which it naturally is with a plugin like this.
- I do use some of the logic in the plugin myself as the most common case is still quite common, and converting to and from shorthand syntax many keystrokes.
- If you have ideas on how to write this plugin to cover at least 80% of arrow function shorthand conversions do open an issue!

## Use

For now I have two bindings that convert _to_ and _from_ arrow function shorthand.

```vimrc
nmap <leader>sht dw<Plug>Dsurround{<CR>f(%$x%
nmap <leader>shf <Plug>YSurround%{jireturn<ESC>
```

Note these mappings relpy on [vim-surround](https://github.com/tpope/vim-surround) by @tpope.
