PAPER    := main.pdf
TEX_SUFS := .aux .log .nav .out .snm .toc .vrb .fdb_latexmk .fls .blg .bbl

export TEXINPUTS := .::

%.pdf:%.tex abstract.tex intro.tex traditional.tex hierarchical.tex \
	easybuild.tex lmod.tex communities_synergy.tex future_work.tex related_work.tex \
	conclusion.tex
	latexmk -pdf $<

all: $(PAPER)

main.pdf: main.bib


clean:
	$(RM) $(foreach suf, ${TEX_SUFS}, $(PAPER:.pdf=${suf})) *~
clobber: clean
	$(RM) $(PAPER)

