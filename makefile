.PHONY: all

all: zimolzak-data-quality-2024-05.pdf zimolzak-data-quality-2024-05.pptx

%.pdf: %.txt
	pandoc -t beamer $< -o $@

%.pptx: %.txt
	pandoc $< -o $@
