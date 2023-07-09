TERM_FILES = term/*/melange_*

build: $(TERM_FILES)

$(TERM_FILES): lua/melange/*
	nvim --headless -u NORC \
		--cmd 'lua require("melange.build").build()' \
		--cmd 'q'
