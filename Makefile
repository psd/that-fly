OPTS=--cover html/front.jpeg --title "That Fly's Year [2012]" --authors "Jed Downey"
HTML=html/index.html

TARGETS=ThatFly.mobi ThatFly.epub ThatFly.pdf

all:	$(TARGETS)

ThatFly.mobi:	$(HTML)
	ebook-convert $(HTML) $@ $(OPTS)

ThatFly.epub:	$(HTML)
	ebook-convert $(HTML) $@ $(OPTS)

ThatFly.pdf:	$(HTML)
	ebook-convert $(HTML) $@ $(OPTS) --paper-size a4

clean::
	rm -f $(TARGETS)
