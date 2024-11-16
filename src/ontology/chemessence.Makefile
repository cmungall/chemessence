## Customize Makefile settings for chemessence
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile

IMGDIR=../../docs/images
DB_DIR = $(HOME)/repos/semantic-sql/db
DB = $(DB_DIR)/chemessence.db

sync: $(SRC)

$(SRC):
	robot convert -i ../../src/notebooks/tmp/all.obo -o $@
#	robot convert -i ../../../ontology-access-kit/notebooks/OBO/tmp/all.obo -o $@


$(IMGDIR)/term-%.png:
	runoak -i $(DB) viz CHEBI:$* -o $@


$(IMGDIR)/example-amino-acid.png:
	runoak -i $(DB) viz L-cysteine L-serine glycine -o $@


$(IMGDIR)/example-Lys-Glu.png:
	runoak -i $(DB) viz L-lysine L-glutamate -o $@




