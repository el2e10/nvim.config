return {
  {
    "echasnovski/mini.surround",
    version = false, -- Use the latest version (or specify a version for stability)
    opts = {
      mappings = {
        add = "gsa",       -- Add surrounding in Normal and Visual modes
        delete = "gsd",    -- Delete surrounding
        find = "gsf",      -- Find surrounding (to the right)
        find_left = "gsF", -- Find surrounding (to the left)
        highlight = "gsh", -- Highlight surrounding
        replace = "gsr",   -- Replace surrounding
        update_n_lines = "gsn", -- Update `n_lines` (number of lines within which surrounding is searched)
      },
    },
    config = function(_, opts)
      require("mini.surround").setup(opts)
    end,
  },
}
