local colors = {
  blue = '#80a0ff',
  cyan = '#79dac8',
  black = '#080808',
  yellow = '#e7c547',
  green = '#95e454',
  white = '#c6c6c6',
  red = '#ff5189',
  violet = '#d183e8',
  grey = '#303030',
  orange = '#ff9e64',
}

local highlights = {
  red = '#ff2e2e',
  orange = '#e16c00',
  blue = '#322eff',
  green = '#09a434',
  violet = '#972eff',
}
return {
  'akinsho/bufferline.nvim',
  event = 'VeryLazy',
  opts = {
    -- highlights = {
    --     fill = {
    --         selected = {
    --             attribute = "bg",
    --             highlight = "Pmenu",
    --         },
    --     },
    -- },
    highlights = {
      background = {
        fg = colors.white,
        bg = colors.grey,
      },
      buffer_selected = {
        fg = colors.black,
        bg = colors.white,
        bold = true,
        italic = false,
      },
      buffer_visible = {
        bg = colors.grey,
        fg = colors.violet,
      },
      separator = {
        fg = colors.grey,
        bg = colors.grey,
      },
      separator_selected = {
        fg = colors.black,
        bg = colors.white,
      },
      separator_visible = {
        fg = colors.black,
        bg = colors.grey,
      },

      -- diagnostic
      diagnostic = {
        fg = colors.white,
        bg = colors.grey,
      },
      diagnostic_selected = {
        fg = colors.black,
        bg = colors.white,
        bold = true,
        italic = false,
      },

      -- modified
      modified = {
        fg = colors.red,
        bg = colors.grey,
      },
      modified_selected = {
        fg = highlights.red,
        bg = colors.white,
      },
      modified_visible = {
        fg = colors.red,
        bg = colors.grey,
      },

      -- warning
      warning = {
        fg = colors.orange,
        bg = colors.grey,
      },
      warning_visible = {
        fg = colors.orange,
        bg = colors.grey,
      },
      warning_selected = {
        fg = highlights.orange,
        bg = colors.white,
        bold = true,
        italic = false,
      },
      warning_diagnostic = {
        fg = colors.orange,
        bg = colors.grey,
      },
      warning_diagnostic_selected = {
        fg = highlights.orange,
        bg = colors.white,
        bold = true,
        italic = false,
      },

      -- error
      error = {
        fg = colors.red,
        bg = colors.grey,
      },
      error_selected = {
        fg = highlights.red,
        bg = colors.white,
        bold = true,
        italic = false,
      },
      error_diagnostic = {
        fg = colors.red,
        bg = colors.grey,
      },
      error_diagnostic_selected = {
        fg = highlights.red,
        bg = colors.white,
        bold = true,
        italic = false,
      },
    },
    options = {
      -- separator_style = { "", "" },
      separator_style = 'thin',
      themable = false,
      close_command = function(n)
        require('mini.bufremove').delete(n, false)
      end,
      offsets = {
        {
          filetype = 'neo-tree',
          text = 'Neo-tree',
          highlight = 'Directory',
          text_align = 'left',
        },
      },
      show_buffer_close_icons = false,
      show_close_icon = false,
      indicator_icon = '',
      left_trunc_marker = '',
      right_trunc_marker = '',
      tab_size = 5,
      modified_icon = '•',
    },
  },
  -- config = function(_, opts)
  --   require('bufferline').setup(opts)
  --   -- Fix bufferline when restoring a session
  --   vim.api.nvim_create_autocmd('BufAdd', {
  --     callback = function()
  --       vim.schedule(function()
  --         pcall(nvim_bufferline)
  --       end)
  --     end,
  --   })
  -- end,
}
