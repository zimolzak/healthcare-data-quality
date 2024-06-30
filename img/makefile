.PHONY: all clean

files = zimolzak-quiz-questions.docx

all: $(files)

%.pdf: %.md
	pandoc -t beamer $< -o $@

%.pptx: %.md
	pandoc $< -o $@

%.docx: %.md
	pandoc $< -o $@

clean:
	rm -f $(files)
