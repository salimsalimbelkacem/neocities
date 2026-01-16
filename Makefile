.PHONY: push

TAILWIND_DIR = tailwind
SRC = src

push: $(SRC)/static/style.css
	neocities push src/

$(SRC)/static/style.css:
	cd $(TAILWIND_DIR) && bun run gen-css

