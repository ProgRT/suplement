.PHONY: clean pdf

pdf: suplement.pdf horaire.pdf splash.pdf

suplement.pdf: suplement.tex
	lualatex suplement

horaire.pdf: horaire.tex
	lualatex horaire

splash.pdf: splash.tex
	lualatex splash

clean:
	rm -f *.aux *.log *.out *.snm *.toc *.nav

