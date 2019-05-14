FOMA_OPTIONS = 
DOT_OPTIONS = 

all: cuneifier.fst

clean:
	rm -f cuneifier.fst cuneifier.png

diagram: cuneifier.png

%.fst: %.foma
	foma -l $< $(FOMA_OPTIONS) -e "save stack $@" -e quit

%.dot: %.foma
	foma -l $< $(FOMA_OPTIONS) -e "print dot > $@" -e quit

%.png: %.dot
	dot $(DOT_OPTIONS) -Tpng -o$@ $<

