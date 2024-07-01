.PHONY: all clean

files = zimolzak-data-quality-2024.pdf zimolzak-data-quality-2024.pptx

images = img/5-9inch.jpg img/72cm.jpg img/book.jpg img/discharge1.png
images += img/discharge2.png img/discharge3.png img/inr-down-up.jpg
images += img/labeling.png img/nate.png img/platelet.png
images += img/richtext-simulated.png img/ryu.jpg img/statinFills.png

all: $(files)
	make -C img

%.pdf: %.md $(images)
	pandoc -t beamer $< -o $@

%.pptx: %.md $(images)
	pandoc $< -o $@

%.docx: %.md
	pandoc $< -o $@

clean:
	rm -f $(files)
	make -C img clean
