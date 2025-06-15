require("lsp_signature").setup({
  bind = true,                    -- Mandatory for floating window placement
  hint_enable = true,            -- Virtual hint enable
  hint_prefix = "🧠 ",           -- Prefix for parameter hint
  hint_scheme = "Comment",       -- Highlight group for virtual hint

  floating_window = true,        -- Use floating window instead of virtual text
  floating_window_above_cur_line = true, -- Prefer above current line if space allows
  floating_window_off_x = 1,     -- Horizontal offset
  floating_window_off_y = 1,     -- Vertical offset

  handler_opts = {
    border = "rounded",          -- Border style: single/double/shadow/none
  },

  max_height = 12,               -- Max height of signature float
  max_width = 80,                -- Max width of signature float
  padding = '',                  -- Padding inside the float window
  transparency = 5,              -- 0-100, 0 fully opaque
  shadow_blend = 36,             -- If border = 'shadow'

  timer_interval = 100,          -- Debounce interval
  toggle_key = nil,              -- Define if you want a toggle key
  extra_trigger_chars = {},      -- Add extra characters to trigger signature

  zindex = 200,                  -- Stack order of the floating window

  always_trigger = false,        -- Show signature even when not in a function

  doc_lines = 2,                 -- Number of lines from function docs shown

  fix_pos = false,               -- Let Neovim choose float placement
})