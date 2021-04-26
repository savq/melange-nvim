make:
	nvim --headless -u NORC \
		--cmd 'lua require("melange.build").buildall()' \
		--cmd 'q'
