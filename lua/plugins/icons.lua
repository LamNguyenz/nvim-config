return {
  -- Web devicons for file type icons
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      override = {},
      default = true,
      strict = true,
      override_by_filename = {
        [".gitignore"] = {
          icon = "󰊢",
          color = "#f1502f",
          name = "Gitignore"
        },
      },
      override_by_extension = {
        ["log"] = {
          icon = "󰦪",
          color = "#81e043",
          name = "Log"
        },
      },
    },
    config = function(_, opts)
      require("nvim-web-devicons").setup(opts)
    end,
  },

  -- Mini icons (alternative icon provider)
  {
    "echasnovski/mini.icons",
    opts = {},
    lazy = true,
    specs = {
      { "nvim-tree/nvim-web-devicons", enabled = false, optional = true },
    },
    init = function()
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
  },
}
