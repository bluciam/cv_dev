RM        = rm -f
CLEANTEX  = $(RM) *.aux *.bbl *.blg *.dvi *.lof *.log *.lot *.toc *.out

#SUBLANGS  = en fr es
SUBLANGS  = en fr

all : 
	for i in $(SUBLANGS) ; do \
	    (cd $$i ; xelatex $${i}All) ; done

.PHONY : clean
clean : 
	for i in $(SUBLANGS) ; do (cd $$i ; rm $(CLEANTEX)); done 
