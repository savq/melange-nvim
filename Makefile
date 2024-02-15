#TERM_FILES = term/*/melange_*

#build: $(TERM_FILES)

#$(TERM_FILES): 
build: lua/melange/*
	nvim --headless -u NORC \
		--cmd 'lua require("lua.melange.build").build()' \
		--cmd 'quit'
