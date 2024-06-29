.PHONY: all clean

files = zimolzak-data-quality-2024.pdf zimolzak-data-quality-2024.pptx

all: $(files)

%.pdf: %.md
	pandoc -t beamer $< -o $@

%.pptx: %.md
	pandoc $< -o $@

clean:
	rm -f $(files)
