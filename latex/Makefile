base:=master

all: references.bib appendix/01-Erlang/tiobe-top-50-plot.eps
	./latexrun \
	  --latex-args="-shell-escape" \
	  --bibtex-cmd="biber" \
	  $(base).tex

appendix/01-Erlang/tiobe-top-50-plot.eps:
	cd appendix/01-Erlang/ && gnuplot -c tiobe-top-50-plot.gnuplot

references.bib:
	cat $(shell find ../resources/ -iname "*.bib") \
	  > references.bib

clean:
	./latexrun --clean-all

.PHONY: all clean references.bib
