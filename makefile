make:
	nvim -es "lua require('melange.build').build()"
	nvim -es "lua require('melange.build_term').build('alacritty')"
