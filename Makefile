build: lua/melange/*
	nvim --headless -u NORC \
		--cmd 'lua require("melange.build").build()' \
		--cmd 'quit'
