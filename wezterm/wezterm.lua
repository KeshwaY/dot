local wezterm = require 'wezterm'
return {
	color_scheme = 'Github Dark',
	enable_tab_bar = false,
	font_size = 14.0,
	line_height = 1.0,
	font = wezterm.font('JetBrains Mono'),
	macos_window_background_blur = 30,
	window_background_opacity = 0.78,
	window_decorations = 'RESIZE',
	window_padding = {
		left = 32,
  		right = 32,
  		top = 32,
  		bottom = 32,
	},
	keys = {
		-- https://stackoverflow.com/questions/9679776/how-do-i-clear-delete-the-current-line-in-terminal
		{
			key = 'f',
			mods = 'OPT',
			action = wezterm.action.ToggleFullScreen,
		},
		{
			key = 'r',
			mods = 'CMD',
			action = wezterm.action.SendKey { key = 'L', mods = 'CTRL' },
		},
		-- Cursor movement
	   	{
			key= 'LeftArrow', 
			mods = 'OPT', 
			action = wezterm.action.SendKey { key = 'b', mods = 'ALT' },
		},
	   	{
			key= 'RightArrow', 
			mods = 'OPT',
			action = wezterm.action.SendKey { key = 'f', mods = 'ALT' },
		},
	   	{
			key= 'LeftArrow', 
			mods = 'CMD',
			action = wezterm.action.SendKey { key = 'a', mods = 'CTRL' },
		},
	   	{
			key= 'RightArrow', 
			mods = 'CMD',
			action = wezterm.action.SendKey { key = 'e', mods = 'CTRL' },
		},
	   	{
			key= 'Backspace', 
			mods = 'CMD',
			action = wezterm.action.SendKey { key = 'U', mods = 'CTRL' },
		},
	   	{
			key= 'Backspace', 
			mods = 'SHIFT',
			action = wezterm.action.SendKey { key = 'K', mods = 'CTRL' },
		},
	   	{
			key= 'Delete', 
			mods = 'SHIFT',
			action = wezterm.action.SendKey { key = 'w', mods = 'ALT' },
		},
	   	{
			key= 'z', 
			mods = 'CMD',
			action = wezterm.action.SendKey { key = '_', mods = 'CTRL' },
		},
		{
			key = 'c',
			mods = 'CMD',
			action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
		},
		-- TMUX
		{
			key = 't',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'C', mods = 'CTRL' },
			}
		},
		{
			key = 't',
			mods = 'CMD|SHIFT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'Y', mods = 'CTRL' },
			}
		},
		{
			key = 'w',
			mods = 'CMD|SHIFT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '&' },
			}
		},
		{
			key = 'w',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'c' },
			}
		},
		{
			key = 'UpArrow',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'UpArrow', mods = 'OPT' },
			}
		},
		{
			key = 'DownArrow',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'DownArrow', mods = 'OPT' },
			}
		},
		{
			key = 'LeftArrow',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'LeftArrow', mods = 'OPT' },
			}
		},
		{
			key = 'RightArrow',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'RightArrow', mods = 'OPT' },
			}
		},
		{
			key = ']',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'L' },
			}
		},
		{
			key = '[',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'H' },
			}
		},
		{
			key = ']',
			mods = 'OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = ')' },
			}
		},
		{
			key = '[',
			mods = 'OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '(' },
			}
		},
		{
			key = '/',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'x' },
			}
		},
		{
			key = '.',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'v' },
			}
		},
		{
			key = ',',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 's' },
			}
		},
		{
			key = 'Tab',
			mods = 'OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '"' },
			}
		},
		{
			key = 'Tab',
			mods = 'OPT|SHIFT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'S' },
			}
		},
		{
			key = ';',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = 'A', mods = 'CTRL' },
			}
		},
		{
			key = "'",
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '[' },
			}
		},
		{
			key = '\\',
			mods = 'CTRL|OPT',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '!' },
			}
		},
		{
			key = '1',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '1' },
			}
		},
		{
			key = '2',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '2' },
			}
		},
		{
			key = '3',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '3' },
			}
		},
		{
			key = '4',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '4' },
			}
		},
		{
			key = '5',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '5' },
			}
		},
		{
			key = '6',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '6' },
			}
		},
		{
			key = '7',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '7' },
			}
		},
		{
			key = '8',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '8' },
			}
		},
		{
			key = '9',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '9' },
			}
		},
		{
			key = '0',
			mods = 'CMD',
			action = wezterm.action.Multiple {
				wezterm.action.SendKey { key = '`' },
				wezterm.action.SendKey { key = '0' },
			}
		},
	},
	mouse_bindings = {
	  -- Ctrl-click will open the link under the mouse cursor
	  {
	    event = { Up = { streak = 1, button = 'Left' } },
	    mods = 'CTRL',
	    action = wezterm.action.OpenLinkAtMouseCursor,
	  },
	},
}

