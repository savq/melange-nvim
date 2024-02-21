build : lua/melange/*
	nvim --headless -u NORC \
		--cmd 'lua require("lua.melange.build").build()' \
		--cmd 'quit'
