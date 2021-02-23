make:
	nvim -es "lua require('melange.build').build('viml')"
	nvim -es "lua require('melange.build').build('alacritty')"
