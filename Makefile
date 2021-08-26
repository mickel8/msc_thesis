CC=pdflatex
CFLAGS=-output-directory=$(OUT) -halt-on-error
OUT=out

main: main.tex
	mkdir -p out
	$(CC) $(CFLAGS) $@
	bibtex $(OUT)/main
	$(CC) $(CFLAGS) $@
	$(CC) $(CFLAGS) $@

clean:
	rm -rf out/

.PHONY: clean

