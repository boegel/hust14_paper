PAPER    := main.pdf
TEX_SUFS := .aux .log .nav .out .snm .toc .vrb .fdb_latexmk

export TEXINPUTS := .::

%.pdf:%.tex abstract.tex intro.tex traditional.tex hierarchical.tex \
	easybuild.tex lmod.tex lessons.tex future_work.tex related_work.tex \
	conclusion.tex
	latexmk -pdf $<

all: $(PAPER)

talk.pdf: spec1.pdf


clean:
	$(RM) $(foreach suf, ${TEX_SUFS}, $(PAPER:.pdf=${suf})) *~
clobber: clean
	$(RM) $(PAPER)

