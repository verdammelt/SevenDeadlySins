all: deadlysins.pdf

open: deadlysins.pdf
	pdfopen -viewer xpdf $< >/dev/null 2>&1 &

clean: 
	$(RM) deadlysins.pdf \
		deadlysins.aux \
		deadlysins.log \
		deadlysins.nav \
		deadlysins.out \
		deadlysins.snm \
		deadlysins.toc \
		deadlysins.vrb

PDFLATEX=pdflatex -halt-on-error

%.pdf: %.tex
	$(PDFLATEX) $<
	$(PDFLATEX) $<


