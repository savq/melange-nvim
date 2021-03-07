make:
	nvim --cmd 'lua require("melange.build").build("viml", "./colors/melange.vim")' \
		--cmd 'lua require("melange.build").build("alacritty", "./term/alacritty.yml")' \
		--cmd 'quit'
