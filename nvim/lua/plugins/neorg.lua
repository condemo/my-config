return {
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    lazy = false,
    version = "*",
    config = true,
    -- put any other flags you wanted to pass to lazy here!
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {
          config = {
            -- icon_preset = "diamond",
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
    },
  },
}
