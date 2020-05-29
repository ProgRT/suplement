.PHONY: clean pdf

splash.pdf: splash.tex fig/fig*.tex
	lualatex splash

figtest.pdf: figtest.tex fig/fig*.tex
	lualatex figtest

suplement.pdf: suplement.tex Makefile pkg.tex
	pdflatex suplement
	pdflatex suplement

horaire.pdf: horaire.tex
	lualatex horaire

pdf: suplement.pdf horaire.pdf splash.pdf

clean:
	rm -f *.aux *.log *.out *.snm *.toc *.nav

