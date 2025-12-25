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
        grey = "#5b6078",
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
    -- Defaults
    NvDashButtons = { fg = "#f5a97f" },

    -- Text Area Theming
    Folded = { bg = "#24273a" },
    NormalFloat = { bg = "#24273a" },

    -- Telescope Theming
    TelescopeNormal = { bg = "#181926" },
    TelescopeBorder = { fg = "#181926", bg = "#181926" },
    TelescopeResultsTitle = { fg = "#181926", bg = "#181926" },
    TelescopePromptNormal = { bg = "#1e2030" },
    TelescopePromptPrefix = { bg = "#1e2030" },
    TelescopePromptBorder = { fg = "#1e2030", bg = "#1e2030" },

    -- Blink.cmp Theming
    BlinkCmpMenu = { bg = "#1e2030" },
    BlinkCmpMenuBorder = { fg = "#8aadf4", bg = "#1e2030" },
    BlinkCmpDoc = { bg = "#1e2030" },
    BlinkCmpDocBorder = { fg = "#8aadf4", bg = "#1e2030" },

    -- Status line Theming
    StatusLine = { bg = "#1e2030" },
    St_gitIcons = { fg = "#eed49f" },

    -- Bufferline theming
    TbFill = { bg = "#1e2030" },
    TbBufOff = { bg = "#1e2030", fg = "#5b6078" },
    TbBufOffClose = { bg = "#1e2030", fg = "#5b6058" },
  },
}

M.ui = {
  statusline = {
    theme = "default",
    seperator_style = "round",
  },
}

M.nvdash = {
  load_on_startup = true,
  header = {
    "╔══════════════════════════════════════════════════════╗",
    "║                                                      ║",
    "║  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗  ║",
    "║  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║  ║",
    "║  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║  ║",
    "║  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║  ║",
    "║  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║  ║",
    "║  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝  ║",
    "║                                                      ║",
    "╚══════════════════════════════════════════════════════╝",
    "                                                        ",
    "                                                        ",
  },
  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
    { txt = "  Restore Session", keys = "rs", cmd = "AutoSession restore" },
    -- more... check nvconfig.lua file for full list of buttons
    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },

    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
      content = "fit",
    },

    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}
return M
