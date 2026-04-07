 
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- GPU rendering
config.front_end               = "WebGpu"
config.webgpu_power_preference = "HighPerformance"
config.max_fps                 = 120

-- Shell
config.default_prog = { "pwsh", "-NoLogo" }

-- Font
config.font      = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular" })
config.font_size = 14.0

-- Aura color scheme (custom)
config.colors = {
  foreground    = "#edecee",
  background    = "#15141b",
  cursor_bg     = "#a277ff",
  cursor_fg     = "#15141b",
  cursor_border = "#a277ff",
  selection_bg  = "#29263c",
  selection_fg  = "#edecee",

  ansi = {
    "#110f18",  -- black
    "#ff6767",  -- red
    "#61ffca",  -- green
    "#ffca85",  -- yellow
    "#a277ff",  -- blue
    "#a277ff",  -- magenta
    "#61ffca",  -- cyan
    "#edecee",  -- white
  },
  brights = {
    "#4d4d4d",  -- bright black
    "#ffca85",  -- bright red
    "#a277ff",  -- bright green
    "#ffca85",  -- bright yellow
    "#a277ff",  -- bright blue
    "#a277ff",  -- bright magenta
    "#61ffca",  -- bright cyan
    "#edecee",  -- bright white
  },

  tab_bar = {
    background = "#110f18",
    active_tab   = { bg_color = "#a277ff", fg_color = "#15141b", intensity = "Bold" },
    inactive_tab = { bg_color = "#15141b", fg_color = "#4d4d4d" },
    inactive_tab_hover = { bg_color = "#1e1c26", fg_color = "#edecee" },
    new_tab      = { bg_color = "#110f18", fg_color = "#4d4d4d" },
  },
}

-- Window
config.window_padding = { left = 8, right = 8, top = 6, bottom = 6 }
config.initial_cols   = 160
config.initial_rows   = 40
config.window_close_confirmation = "NeverPrompt"

-- Tab bar
config.enable_tab_bar               = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar            = false
config.tab_max_width                = 32

-- Scrollback
config.scrollback_lines = 10000

-- Cursor
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate    = 500

-- Keybinds (Windows Terminal parity)
local act = wezterm.action
config.keys = {
  -- Copy / Paste — Windows-standard
  { key = "c", mods = "CTRL", action = wezterm.action_callback(function(window, pane)
      local sel = window:get_selection_text_for_pane(pane)
      if sel and sel ~= "" then
        window:perform_action(act.CopyTo("Clipboard"), pane)
      else
        window:perform_action(act.SendKey({ key = "c", mods = "CTRL" }), pane)
      end
    end),
  },
  { key = "v", mods = "CTRL", action = act.PasteFrom("Clipboard") },

  -- Tabs
  { key = "t", mods = "CTRL|SHIFT", action = act.SpawnTab("CurrentPaneDomain") },

  -- Split panes
  { key = "d", mods = "CTRL|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
  { key = "e", mods = "CTRL|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },

  -- Navigate panes
  { key = "LeftArrow",  mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Left") },
  { key = "RightArrow", mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Right") },
  { key = "UpArrow",    mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Up") },
  { key = "DownArrow",  mods = "CTRL|SHIFT", action = act.ActivatePaneDirection("Down") },

  -- Close pane (closes tab if last pane)
  { key = "w", mods = "CTRL|SHIFT", action = act.CloseCurrentPane({ confirm = false }) },

  -- Font size
  { key = "=", mods = "CTRL", action = act.IncreaseFontSize },
  { key = "-", mods = "CTRL", action = act.DecreaseFontSize },
  { key = "0", mods = "CTRL", action = act.ResetFontSize },
}

return config