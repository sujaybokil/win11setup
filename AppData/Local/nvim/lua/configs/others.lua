-- Bracket completion
require'nvim-autopairs'.setup {}

-- Color me surprised
require 'colorizer'.setup()

-- Treeshitter
require'nvim-treesitter.configs'.setup {

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- Block comments
require('Comment').setup {
    toggler = {
	line = '<leader>cc',
	block = '<leader>bc'
    }
}

-- Indent guides
vim.g.indent_blankline_char = '¦'
vim.g.indent_blankline_show_first_indent_level = false
require("indent_blankline").setup {}
