all: paper_TT.pdf

paper_TT.pdf: *tex *bib
	latexmk -pdf paper_TT.tex
	latexmk -c
