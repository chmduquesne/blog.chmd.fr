INPUTDIR=source
CONFFILE=$(INPUTDIR)/pelican.conf.py
OUTPUTDIR=.

all: clean $(OUTPUTDIR)/index.html
	@echo done

$(OUTPUTDIR)/%.html:
	pelican -v -o $(OUTPUTDIR) -s $(CONFFILE) $(INPUTDIR)

clean:
	rm -rf author category documents feeds images tag theme *.html
