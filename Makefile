make:
	nvim --headless -u NORC \
		--cmd 'lua require("melange.build").build()' \
		--cmd 'q'
