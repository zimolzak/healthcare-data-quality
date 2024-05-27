.PHONY: all

all: zimolzak-data-health-policy-2023-12-05.pdf zimolzak-data-health-policy-2023-12-05.pptx

%.pdf: %.md
	pandoc -t beamer -H fix.tex $< -o $@

%.pptx: %.md
	pandoc $< -o $@
