# Neovim from Scratch

<img
  width="1600"
  alt="Screenshot of Neovim using this config, running in the kiity terminal emulator"
  src="https://user-images.githubusercontent.com/423798/211181285-5683f618-97eb-4cee-866d-93bbf9ef6ef9.png" />

This is a starter Neovim configuration meant to act as a jumping-off point for
new Neovim users or those who have declared config bankruptcy.

## Why?

Neovim is a fantastic source code editor out of the box, but with a little help
can provide a truly feature-rich development environment that matches (or
exceeds) alternative offerings.

The leg work involved in going from a blank `init.lua` to a useful daily driver
can be intimidating. This repo provides a handy starting point so that you can
begin using Neovim right away while building your own [Personalized Development
Environment].

## Getting started

Clone the project into your [$XDG_CONFIG_HOME] directory (usually `~/.config`)
as `nvim`:

    git clone https://github.com/ngscheurich/nvim-from-scratch ~/.config/nvim

The next time you launch Neovim, the configuration will be applied and the
[plugin manager][lazy.nvim] should start doing its thing.

### Requirements

This config has only been tested with **Neovim 0.8.2** and higher.

You’ll also need to have [fd] and [ripgrep]; these help improve the fuzzy
finding experience. [Homebrew] users can install these with:

    brew install ripgrep fd

## What’s included

The core Neovim experience is configured with sensible settings and examples of
key mappings, autocommands, and abbreviations are included.

Additionally, a handful of plugins are configured to augment the user
interface, tap into powerful features like the native [LSP] client and
[tree-sitter] integration, and extend Neovim’s already powerful text editing
capabilities.

Files are organized in a way that makes things succinct and easy to find:

    ~/.config/nvim
    ├── init.lua
    └── lua
        ├── config
        │   ├── abbrevs.lua
        │   ├── commands.lua
        │   ├── keymaps.lua
        │   └── options.lua
        └── plugins
            ├── init.lua
            └── ...

### Plugins

[lazy.nvim] is used for plugin management. You can learn more about the plugin
manager and configuration options with `:h lazy.nvim`.

#### Editing

Plugins for more effortless text editing.

- [echasnovski/mini.align]: Interactively align text
- [echasnovski/mini.comment]: Comment/uncomment lines and ranges
- [echasnovski/mini.pairs]: Automatically insert the latter half of character pairs
- [tpope/vim-surround]: Text objects based on quotes, parens, etc.

#### Interface

Plugins that extend or improve the Neovim terminal user interface (TUI).

- [nvim-lualine/lualine.nvim]: Enhance the statusline
- [folke/todo-comments.nvim]: Highlight, list, and search TODO comments
- [folke/tokyonight.nvim]: A rich colorscheme with great plugin support
- [folke/which-key.nvim]: Key hints in a pop-up buffer

#### Navigation

Plugins for efficiently moving through and between files.

- [andymass/vim-matchup]: Extend % to operate on language keywords
- [folke/trouble.nvim]: Handy list for diagnostics, search results, quickfix, etc.
- [ggandor/leap.nvim]: Precision movement to visible locations
- [justinmk/vim-dirvish]: Fast, convenient directory viewer
- [nvim-telescope/telescope.nvim]: Generic fuzzy finder over lists, with some useful built-ins
- [nvim-tree/nvim-tree.lua]: File explorer sidebar

#### Syntax

Plugins that help Neovim understand different programming languages.

- [sheerun/vim-polyglot]: A collection of language packs that get loaded on demand

#### Code Intelligence

Plugins that enable a rich source code editing experience.

- [folke/neodev.nvim]: Configures environment for Neovim config and plugin development
- [neovim/nvim-lspconfig]: Collection of quick-start language server configurations
- [nvim-treesitter/nvim-treesitter]: Interface to and features around [tree-sitter]
- [nvim-treesitter/playground]: View and interact with tree-sitter AST
- [williamboman/mason.nvim]: Install and update binaries for LSP, DAP, linting, and formatting
- [williomboman/mason-lspconfig.nvim]: Bridge the gap between mason.nvim and nvim-lspconfig

#### Completion and Snippets

Plugins that save time and provide intelligent insert mode completion.

- [L3MON4D3/LuaSnip]: Lua-based snippet engine 
- [hrsh7th/cmp-buffer]: Completion source for buffer words
- [hrsh7th/cmp-nvim-lsp]: Completion source for Neovim LSP client
- [hrsh7th/nvim-cmp]: Completion system
- [saadparwaiz1/cmp_luasnip]: Completion source for LuaSnip

#### Source Control

Plugins that integrate with source sontrol systems.

- [lewis6991/gitsigns.nvim]: Buffer-level Git integration
- [tpope/vim-fugitive]: Wrapper for running arbitrary Git commands

#### Miscellaneous

Plugins that don't neatly fit into any other category.

- [NvChad/nvim-colorizer.lua]: Highlight color strings
- [tpope/vim-rsi]: Readline bindings for insert and command line mode
- [tpope/vim-unimpaired]: Handy bracket-based mappings for paired commands

## What next?

This is meant to be a starting point! Once you’re comfortable, here are some
ways you might start making it your own:

- Try out a new [colorscheme]
- Define some additional keymaps
- Test out some more built-in Telescope [pickers]
- Write some new [snippets]

And of course, don’t be afraid to explore the Neovim [plugin ecosystem]!

## Development 

A [Dockerfile] is included to simplify manually testing changes. Build the
Docker image with `make build`.

Now running `make` will drop you into a Debian container with the latest stable
`nvim` available. Any changes made to the config files will be reflected in the
container.

## See also

- [Folke Lemaitre]’s well-organized and thorough [dotfiles][folke-dot] were
  heavily referenced, and lots of his plugins are included. Thanks, Folke!
- [Kickstart.nvim] is another great starting point for your configuration.
- The name of this project was inspired by [Emacs from Scratch].

[$XDG_CONFIG_HOME]: https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
[Dockerfile]: Dockerfile
[Emacs from Scratch]: https://github.com/daviwil/emacs-from-scratch
[Folke Lemaitre]: https://github.com/folke
[Kickstart.nvim]: https://github.com/nvim-lua/kickstart.nvim
[L3MON4D3/LuaSnip]: https://github.com/L3MON4D3/LuaSnip
[LSP]: https://microsoft.github.io/language-server-protocol/
[NvChad/nvim-colorizer.lua]: https://github.com/NvChad/nvim-colorizer.lua
[NvChad/nvim-colorizer.lua]: https://github.com/NvChad/nvim-colorizer.lua
[Personalized Development Environment]: https://www.youtube.com/watch?v=QMVIJhC9Veg&t=0s
[andymass/vim-matchup]: https://github.com/andymass/vim-matchup
[colorscheme]: https://github.com/rockerBOO/awesome-neovim#colorscheme
[echasnovski/mini.align]: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-align.md
[echasnovski/mini.comment]: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-comment.md
[echasnovski/mini.pairs]: https://github.com/echasnovski/mini.nvim/blob/main/readmes/mini-pairs.md
[fd]: https://github.com/sharkdp/fd
[folke-dot]: https://github.com/folke/dot/tree/master/config/nvim
[folke/neodev.nvim]: https://github.com/folke/neodev.nvim
[folke/todo-comments.nvim]: https://github.com/folke/todo-comments.nvim
[folke/tokyonight.nvim]: https://github.com/folke/tokyonight.nvim
[folke/trouble.nvim]: https://github.com/folke/trouble.nvim
[folke/which-key.nvim]: https://github.com/folke/which-key.nvim
[ggandor/leap.nvim]: https://github.com/ggandor/leap.nvim
[homebrew]: https://brew.sh/
[hrsh7th/cmp-buffer]: https://github.com/hrsh7th/cmp-buffer
[hrsh7th/cmp-nvim-lsp]: https://github.com/hrsh7th/cmp-nvim-lsp
[hrsh7th/nvim-cmp]: https://github.com/hrsh7th/nvim-cmp
[justinmk/vim-dirvish]: https://github.com/justinmk/vim-dirvish
[justinmk/vim-dirvish]: https://github.com/justinmk/vim-dirvish
[lazy.nvim]: https://github.com/folke/lazy.nvim
[lewis6991/gitsigns.nvim]: https://github.com/lewis6991/gitsigns.nvim
[neovim/nvim-lspconfig]: https://github.com/neovim/nvim-lspconfig
[nvim-lualine/lualine.nvim]: https://github.com/nvim-lualine/lualine.nvim
[nvim-telescope/telescope.nvim]: https://github.com/nvim-telescope/telescope.nvim
[nvim-tree/nvim-tree.lua]: https://github.com/nvim-tree/nvim-tree.lua
[nvim-treesitter/nvim-treesitter]: https://github.com/nvim-treesitter/nvim-treesitter
[nvim-treesitter/playground]: https://github.com/nvim-treesitter/playground
[pickers]: https://github.com/nvim-telescope/telescope.nvim#pickers
[plugin ecosystem]: https://github.com/rockerBOO/awesome-neovim
[ripgrep]: https://github.com/BurntSushi/ripgrep
[saadparwaiz1/cmp_luasnip]: https://github.com/saadparwaiz1/cmp_luasnip
[sheerun/vim-polyglot]: https://github.com/sheerun/vim-polyglot
[snippets]: https://github.com/L3MON4D3/LuaSnip/blob/master/Examples/snippets.lua
[tpope/vim-fugitive]: https://github.com/tpope/vim-fugitive
[tpope/vim-rsi]: https://github.com/tpope/vim-rsi
[tpope/vim-rsi]: https://github.com/tpope/vim-rsi
[tpope/vim-surround]: https://github.com/tpope/vim-surround
[tpope/vim-unimpaired]: https://github.com/tpope/vim-unimpaired
[tpope/vim-unimpaired]: https://github.com/tpope/vim-unimpaired
[tree-sitter]: TODO
[williamboman/mason.nvim]: https://github.com/williamboman/mason.nvim
[williomboman/mason-lspconfig.nvim]: https://github.com/williamboman/mason-lspconfig.nvim
