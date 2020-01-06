INPUTDIR=source
CONFFILE=$(INPUTDIR)/pelican.conf.py
OUTPUTDIR=docs

all: clean $(OUTPUTDIR)/index.html
	@echo done

$(OUTPUTDIR)/index.html:
	pelican -v -o $(OUTPUTDIR) -s $(CONFFILE) $(INPUTDIR)

clean:
	rm -rf $(OUTPUTDIR)/*
