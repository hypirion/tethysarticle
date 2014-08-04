## Makefile
## Copyright 2014 Jean Niklas L'orange
#
# This work may be distributed and/or modified under the
# conditions of the LaTeX Project Public License, either version 1.3
# of this license or (at your option) any later version.
# The latest version of this license is in
#   http://www.latex-project.org/lppl.txt
# and version 1.3 or later is part of all distributions of LaTeX
# version 2005/12/01 or later.
#
# This work has the LPPL maintenance status `maintained'.
# 
# The Current Maintainer of this work is Jean Niklas L'orange.
#
# This work consists of the files Makefile, thesis.tex and config.tex.

LATEX = pdflatex
BIBTEX = biber
LATEXFLAGS = -shell-escape
TEMPS = toc bbl blg log out lof lot lol aux pyg
REPORT = thesis

.PHONY: clean purge remake repeatedly
.SUFFIXES: .tex .pdf

.tex.pdf:
	$(LATEX) $(LATEXFLAGS) $<
	$(BIBTEX) $*.aux
	$(LATEX) $(LATEXFLAGS) $<
	$(LATEX) $(LATEXFLAGS) $<

all: | purge $(REPORT).pdf

clean:
	for s in $(TEMPS); do rm -f $(REPORT).$$s; done

purge: clean
	-rm -f $(REPORT).pdf

repeatedly:
	latexmk -pdf -pdflatex='pdflatex -shell-escape %O %S' -pvc $(REPORT).tex
