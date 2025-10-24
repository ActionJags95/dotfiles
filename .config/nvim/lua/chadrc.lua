local M = {}

M.base46 = {
  theme = "catppuccin",
  changed_themes = {
    catppuccin = {
      base_30 = {
        black = "#24273a",
        black2 = "#1e2030",
        darker_black = "#1e2030",
        white = "#cad3f5",
        grey = "#494d64",
        line = "#6e738d",
        red = "#ed8796",
        pink = "#f5bde6",
        green = "#a6da95",
        vibrant_green = "#a6da95",
        blue = "#8aadf4",
        nord_blue = "#8aadf4",
        yellow = "#eed49f",
        dark_purple = "#c6a0f6",
        teal = "#8bd5ca",
        orange = "#f5a97f",
        cyan = "#7dc4e4",
        statusline_bg = "#1e2030",
        one_bg3 = "#363a4f",
        one_bg2 = "#494d64",
        one_bg = "#27273a",
        lightbg = "#363a4f",
        pmenu_bg = "#8aadf4",
      },
      base_16 = {
        base00 = "#24273a",
        base02 = "#363a4f",
        base03 = "#494d64",
        base0B = "#a6da95",
      },
    },
  },
  hl_override = {
    -- Telescope theming
    TelescopeNormal = { bg = "#181926" },
    TelescopeBorder = { fg = "#181926", bg = "#181926" },
    TelescopeResultsTitle = { fg = "#181926", bg = "#181926" },

    -- Blink.cmp theming
    BlinkCmpMenu = { bg = "#1e2030" },
    BlinkCmpMenuBorder = { fg = "#8aadf4", bg = "#1e2030" },
    BlinkCmpDoc = { bg = "#1e2030" },
    BlinkCmpDocBorder = { fg = "#8aadf4", bg = "#1e2030" },
  },
}

M.ui = {
  statusline = {
    theme = "default",
    seperator_style = "round",
  },
}
return M
