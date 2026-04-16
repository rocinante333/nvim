# neovim configs

## Prereqs

Before starting, ensure you have:
> - **neovim** (duh) v0.12+ as this uses vim.pack released in 0.12
> - a [nerd font](https://www.nerdfonts.com/) and a terminal that supports glyphs (probably iTerm2)
> - treesitter (cargo installation works best for me on MacOS)
> - brew install lua

## Install and configuration
```
cd ~/.config/ && git clone <repo>
```
- Key maps are in `lua/config/mappings.lua`
    * **Leader is bound to space**, you can press space by itself for which-key to pop up with bindings info
- Neovim options are set in `lua/config/options.lua` with some comments for info
- Plugins are added in init.lua, but plugin configuration is located in the `lua/plugins/` folder

## Pick plugins
- [Awesome neovim plugins list](https://github.com/rockerBOO/awesome-neovim)

**5. Set mappings, options, and plugin config**
- Use `:help options` or browse [here](https://neovim.io/doc/user/options.html)
- You don't *always* need to configure plugins: most have sensible defaults, and you can set as few or as many opts as you wish.

