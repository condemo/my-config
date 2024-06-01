local function config()
  local clrs = require("catppuccin.palettes").get_palette()
  local ctp_feline = require("catppuccin.groups.integrations.feline")
  local U = require("catppuccin.utils.colors")

  ctp_feline.setup({
    assets = {
      left_separator = "",
      right_separator = "",
      mode_icon = "",
      dir = "󰉖",
      file = "󰈙",
      lsp = {
        server = "󰅡",
        error = "",
        warning = "",
        info = "",
        hint = "",
      },
      git = {
        branch = "",
        added = "",
        changed = "",
        removed = "",
      },
    },
    sett = {
      text = U.vary_color({}, clrs.surface0),
      bkg = U.vary_color({}, clrs.surface0),
      diffs = clrs.mauve,
      extras = clrs.overlay1,
      curr_file = clrs.pink,
      curr_dir = clrs.sky,
      show_modified = true, -- show if the file has been modified
    },
    mode_colors = {
      ["n"] = { "NORMAL", clrs.lavender },
      ["no"] = { "N-PENDING", clrs.lavender },
      ["i"] = { "INSERT", clrs.green },
      ["ic"] = { "INSERT", clrs.green },
      ["t"] = { "TERMINAL", clrs.green },
      ["v"] = { "VISUAL", clrs.flamingo },
      ["V"] = { "V-LINE", clrs.flamingo },
      ["�"] = { "V-BLOCK", clrs.flamingo },
      ["R"] = { "REPLACE", clrs.maroon },
      ["Rv"] = { "V-REPLACE", clrs.maroon },
      ["s"] = { "SELECT", clrs.maroon },
      ["S"] = { "S-LINE", clrs.maroon },
      ["�"] = { "S-BLOCK", clrs.maroon },
      ["c"] = { "COMMAND", clrs.peach },
      ["cv"] = { "COMMAND", clrs.peach },
      ["ce"] = { "COMMAND", clrs.peach },
      ["r"] = { "PROMPT", clrs.teal },
      ["rm"] = { "MORE", clrs.teal },
      ["r?"] = { "CONFIRM", clrs.mauve },
      ["!"] = { "SHELL", clrs.green },
    },
    view = {
      lsp = {
        progress = true, -- if true the status bar will display an lsp progress indicator
        name = false, -- if true the status bar will display the lsp servers name, otherwise it will display the text "Lsp"
        exclude_lsp_names = {}, -- lsp server names that should not be displayed when name is set to true
        separator = "|", -- the separator used when there are multiple lsp servers
      },
    },
    force_inactive = {
      filetypes = { "^dapui_*", "^help$", "^neotest*", "^NvimTree$", "^qf$" },
      bufname = { "^dashboard$" },
    },
  })

  return { components = ctp_feline.get() }
end

return {
  {
    "freddiehaddad/feline.nvim",
    event = "VeryLazy",
    opts = config,
  },
}
