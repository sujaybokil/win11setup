vim.g.nvim_tree_indent_markers = 1
vim.g.nvim_tree_highlight_opened_files = 1

require'nvim-tree'.setup {
    update_cwd = true,
    auto_close = true,
    update_to_buf_dir = {
	enable = false,
	update_cwd = false
    },
    diagnostics = {
	enable = false,
    },
    git = {
	enable = false
    },
    view = {
	auto_resize = true,
    },
    actions = {
	change_dir = {
	    global = true,
	},
	open_file = {
	    quit_on_open = false,
	}
    }
}
