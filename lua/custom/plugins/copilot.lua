return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    opts = {
      suggestion = { enabled = true, accept = false },
      panel = { enabled = true },
      line = { enabled = true },
      filetypes = {
        markdown = true,
        help = true,
      },
      keymap = {
        accept = '<Leader><CR>',
        refresh = 'gr',
        open = '<M-CR>',
      },
    },
  },
}
