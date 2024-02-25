##
## This is part of Japanese translation version for Hugo Documantation.
##

SUBDIRS = ja

copydirs = \
	en

include $(top_srcdir)/build-aux/common.mk

.PHONY: all _copydirs
all: _copydirs

_copydirs:
	@for d in $(copydirs); do \
	  if test ! -d $$d; then \
	    cp -pR $(abs_origdir)/$$d .; \
	  fi \
	done
