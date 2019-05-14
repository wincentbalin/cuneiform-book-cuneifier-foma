FOMA_OPTIONS = 
DOT_OPTIONS = 

all: cuneifier.foma

clean:
	rm -f cuneifier.foma cuneifier.png

diagram: cuneifier.png

test: cuneifier.foma
	flookup -x -i $<

%.foma: %.fst
	foma -l $< $(FOMA_OPTIONS) -e "save stack $@" -e quit

%.dot: %.fst
	foma -l $< $(FOMA_OPTIONS) -e "print dot > $@" -e quit

%.png: %.dot
	dot $(DOT_OPTIONS) -Tpng -o$@ $<

