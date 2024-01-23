TEX=pdflatex -shell-escape -interaction=nonstopmode -file-line-error
BIB=bibtex

STEM=paper_TT

TARGET=$(STEM).pdf
SRC = $(STEM).tex
AUX = $(STEM).aux

TARGET:
	$(TEX) $(SRC)
	$(BIB) $(AUX)
	$(TEX) $(SRC)
	$(TEX) $(SRC)


.PHONY: clean
clean:
	rm -f $(TARGET) $(AUX) *.bbl *.blg *.log *.out
