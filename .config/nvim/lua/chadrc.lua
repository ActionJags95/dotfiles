local M = {}

M.base46 = {
  theme = "catppuccin",
  transparency = true,
  changed_themes = {
    catppuccin = {
      base_30 = {
        black = "#24273a",
        black2 = "#1e2030",
        darker_black = "#1e2030",
        white = "#cad3f5",
        grey = "#494d64",
        grey_fg = "#939ab7",
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
        base02 = "#5b6078",
        base03 = "#6e738d",
        base0B = "#a6da95",
      },
    },
  },
  hl_override = {
    -- Text Area Theming
    Folded = { bg = "#1e2030" },
    NormalFloat = { bg = "#1e2030" },

    -- Telescope Theming
    TelescopeNormal = { bg = "#181926" },
    TelescopeBorder = { fg = "#181926", bg = "#181926" },
    TelescopeResultsTitle = { fg = "#181926", bg = "#181926" },
    TelescopePromptNormal = { bg = "#24273a" },
    TelescopePromptPrefix = { bg = "#24273a" },
    TelescopePromptBorder = { fg = "#24273a", bg = "#24273a" },

    -- Blink.cmp Theming
    BlinkCmpMenu = { bg = "#1e2030" },
    BlinkCmpMenuBorder = { fg = "#8aadf4", bg = "#1e2030" },
    BlinkCmpDoc = { bg = "#1e2030" },
    BlinkCmpDocBorder = { fg = "#8aadf4", bg = "#1e2030" },

    -- Status line Theming
    StatusLine = { bg = "#1e2030" },
    St_gitIcons = { fg = "#eed49f" },

    -- Bufferline Theming
    Tabline = { bg = "#1e2030" },
    TbBufOn = { bg = "#363a4f" },
    TbBufOnClose = { bg = "#363a4f" },
    TbBufOnModified = { bg = "#363a4f" },

    -- NvimTree Theming
    NvimTreeNormal = { bg = "#1e2030" },
    NvimTreeNormalNC = { bg = "#1e2030" },
  },
}

M.ui = {
  statusline = {
    theme = "default",
    seperator_style = "round",
  },
}
return M
