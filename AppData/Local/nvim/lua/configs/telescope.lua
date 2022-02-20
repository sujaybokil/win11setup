require('telescope').setup{
  defaults = {
    mappings = {}
  },
  pickers = {
      find_files = {
	  hidden = true
      }
  },
  extensions = {
      file_browser = {
	  hidden = true
      }
  }

}

require("telescope").load_extension "file_browser"
