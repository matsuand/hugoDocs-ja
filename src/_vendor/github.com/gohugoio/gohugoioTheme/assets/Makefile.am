##
## This is part of Japanese translation version for Hugo Documantation.
##

SUBDIRS = output

copyfiles = \
	index.js

include $(top_srcdir)/build-aux/common.mk
include $(top_srcdir)/build-aux/copy.mk

copydirs = \
	css       \
	images    \
	js        \
	opengraph

.PHONY: _copydirs
all: _copydirs
_copydirs:
	@for d in $(copydirs); do \
	  if test ! -d $$d; then \
	    cp -pR $(abs_origdir)/$$d .; \
	  fi \
	done
