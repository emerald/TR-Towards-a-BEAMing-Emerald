base:=master

all: references.bib
	./latexrun \
	  --latex-args="-shell-escape" \
	  --bibtex-cmd="biber" \
	  $(base).tex

references.bib:
	cat $(shell find ../resources/ -iname "*.bib") \
	  > references.bib

clean:
	./latexrun --clean-all

.PHONY: all clean references.bib
