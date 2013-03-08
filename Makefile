all: gita.dvi
	xdg-open gita.dvi

gita.dvi: gita.tex
	latex gita.tex # Run 1.
	latex gita.tex # Run 2. For any references.

gita.tex: gita.dn chapter1.tex chapter2.tex
	devnag gita.dn

chapter1.tex: chapter1.dn
	devnag chapter1.dn

chapter2.tex: chapter2.dn
	devnag chapter2.dn

clean:
	rm --force *.aux *.log *.dvi *.tex *~ .*~ *.*~
