##
## This is part of Japanese translation version for Hugo Documantation.
##

SUBDIRS = js

include $(top_srcdir)/build-aux/common.mk

copydirs = \
	css

.PHONY: _copydirs
all: _copydirs
_copydirs:
	@for d in $(copydirs); do \
	  if test ! -d $$d; then \
	    cp -pR $(abs_origdir)/$$d .; \
	  fi \
	done
