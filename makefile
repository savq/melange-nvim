make:
	nvim --headless -u NORC \
		--cmd 'lua require("melange.build").build("viml", "./colors/melange.vim")' \
		--cmd 'lua require("melange.build").build("alacritty", "./term/alacritty.yml")' \
		--cmd 'lua require("melange.build").build("kitty", "./term/kitty.conf")' \
		--cmd 'quit'
