.PHONY: all clean

files = zimolzak-data-quality-2024.pdf zimolzak-data-quality-2024.pptx

all: $(files)
	make -C img

%.pdf: %.md
	pandoc -t beamer $< -o $@

%.pptx: %.md
	pandoc $< -o $@

%.docx: %.md
	pandoc $< -o $@

clean:
	rm -f $(files)
	make -C img clean
