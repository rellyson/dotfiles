local wezterm = require 'wezterm'

local config = {}

-- use the config builder to create the default
-- config object
if wezterm.config_builder then config = wezterm.config_builder() end

-- general config
config.default_prog = {
    '/bin/zsh', '-l', '-c', 'tmux attach || tmux new -s local'
}
config.detect_password_input = true
config.enable_scroll_bar = false
config.hide_mouse_cursor_when_typing = true
config.scrollback_lines = 10000
config.term = 'xterm-256color'

-- appearance config
config.enable_tab_bar = false
config.window_padding = {left = 3, right = 1, top = 0, bottom = 0}
config.font_size = 11
config.line_height = 1.1
config.initial_cols = 180
config.initial_rows = 34

-- colorscheme
config.colors = {
    background = '#120d17',
    foreground = '#edecee',
    cursor_bg = '#a288de',
    cursor_fg = '#120d17',
    cursor_border = '#a288de',
    selection_bg = '#523b6b',
    selection_fg = '#120d17',
    scrollbar_thumb = '#523b6b',
    ansi = {
        '#1b1b1b', '#f38ba8', '#94e2d5', '#f9e2af', '#f2e7ee', '#f5c2d7',
        '#94e2d5', '#edecee'
    },
    brights = {
        '#4d4d4d', '#f38ba8', '#94e2d5', '#F7BAA2', '#b4beee', '#b4beee',
        '#94e2d5', '#edecee'
    }
}

return config
