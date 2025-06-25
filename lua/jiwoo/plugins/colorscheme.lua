return {
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").setup({
        -- 🎨 Override the base palette if needed
        on_palette = function(palette)
          -- Example: tweak comment color
          -- background
          palette.gray0 = "#1E222A"
          -- suggestion and find file color
          palette.black1 = "#2E3440" -- "#222630"
        end,

        -- 🎨 Override extended palette (after on_palette)
        after_palette = function(palette)
          -- Example: modify slightly later colors
          palette.bg_sidebar = "#191D24" --"#242933"
          local U = require("nordic.utils")
          -- palette.bg_visual = U.blend(palette.bg, palette.fg, 0.93)
          palette.bg_visual = "#2E3440"
          palette.comment = "#3B4252"
        end,

        -- ✨ Customize specific highlights
        on_highlight = function(highlights, palette)
          -- Make line numbers and tab markers match comment color
          highlights.LineNr = { fg = palette.comment }
          highlights.TabLine = { fg = palette.comment }
          highlights.TabLineSel = { fg = palette.fg, bold = false }
          highlights.TabLineFill = { bg = palette.bg }
        end,

        -- Theme options
        bold_keywords = false,
        italic_comments = false,

        -- Transparent backgrounds
        transparent = {
          bg = false, -- main editor background
          float = false, -- floating windows
        },

        bright_border = false,
        reduced_blue = true,
        swap_backgrounds = false,

        -- Cursorline
        cursorline = {
          bold = false,
          bold_number = true,
          theme = "dark",
          blend = 0.85,
        },

        -- Plugin integrations
        noice = {
          style = "classic",
        },
        telescope = {
          style = "flat",
        },
        leap = {
          dim_backdrop = false,
        },
        ts_context = {
          dark_background = true,
        },
      })

      -- Load the colorscheme
      vim.cmd("colorscheme nordic")
    end,
  },
}
