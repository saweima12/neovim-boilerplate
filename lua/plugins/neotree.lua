local neotree = require("neo-tree")

neotree.setup({
  close_if_last_window = true,
  name = {
    trailing_slash = true,
    use_git_status_colors = true,
    highlight = "NeoTreeFileName",
  },
  window = {
    width = 30,
  },
  filesystem = {
    follow_current_file = {
      enabled = true
    },
    use_libuv_file_watcher = true,
  },
})

