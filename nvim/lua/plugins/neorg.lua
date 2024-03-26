return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {
          config = {
            icon_preset = "diamond",
          },
        },
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            default_keybinds = true,
            workspaces = {
              notes = "~/Dropbox/notes/home",
              work = "~/Dropbox/notes/work",
            },
            default_workspace = "work",
          },
        },
      },
    })
  end,
}
