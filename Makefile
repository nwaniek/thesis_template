TEX = pdflatex
SRC = thesis.tex
BIB = thesis.bib

# needs 3 tex calls after bibtex so that backreferences work
all:
	$(TEX) $(SRC)
	bibtex thesis
	$(TEX) $(SRC)
	$(TEX) $(SRC)
	$(TEX) $(SRC)

clean:
	rm -f *.aux
	rm -f *.nav
	rm -f *.out
	rm -f *.log
	rm -f *.bbl
	rm -f *.blg
	rm -f *.lof
	rm -f *.loa
	rm -f *.lot
	rm -f *.toc
	rm -f *.brf
	rm -f thesis.pdf
