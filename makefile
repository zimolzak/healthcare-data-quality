.PHONY: all clean

files = zimolzak-data-quality-2024.pdf zimolzak-data-quality-2024.pptx
files += zimolzak-quiz-questions.docx

all: $(files)

%.pdf: %.md
	pandoc -t beamer $< -o $@

%.pptx: %.md
	pandoc $< -o $@

%.docx: %.md
	pandoc $< -o $@

clean:
	rm -f $(files)
