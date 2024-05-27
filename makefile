.PHONY: all

all: zimolzak-data-quality-2024-05.pdf zimolzak-data-quality-2024-05.pptx

%.pdf: %.md
	pandoc -t beamer $< -o $@

%.pptx: %.md
	pandoc $< -o $@
