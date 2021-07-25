# Dear emacs, this is a -*- Makefile -*-

TARGETS := $(shell cd test; $(MAKE) -pn | grep '^\.DEFAULT_GOAL' | cut -d ' ' -f 3) $(shell cd test; $(MAKE) -pn | grep '^[[:alnum:]]*:' | cut -d ':' -f1)

$(TARGETS)::
	cd test; $(MAKE) $@

