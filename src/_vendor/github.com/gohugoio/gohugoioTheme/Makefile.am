##
## This is part of Japanese translation version for Hugo Documantation.
##

SUBDIRS = assets layouts

copyfiles = \
	config.toml  \
	package.json \
	theme.toml

include $(top_srcdir)/build-aux/common.mk
include $(top_srcdir)/build-aux/copy.mk

copydirs = \
	data    \
	layouts \
	static

.PHONY: _copydirs
all: _copydirs
_copydirs:
	for d in $(copydirs); do \
	  if test ! -d $$d; then \
	    cp -pR $(abs_origdir)/$$d .; \
	  fi \
	done
