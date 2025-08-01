return {
  "echasnovski/mini.pairs",
  version = "*",
  opts = {
    modes = {
      insert = true,
      command = false,
      terminal = false,
    },

    -- skip autopair when the cursor is inside these treesitter nodes
    skip_ts = { "string" },

    -- better deal with markdown code blocks
    markdown = true,

    -- skip autopair when next character is closing pair
    -- and there are more closing pairs than opening pairs
    skip_unbalanced = true,
  },
}
