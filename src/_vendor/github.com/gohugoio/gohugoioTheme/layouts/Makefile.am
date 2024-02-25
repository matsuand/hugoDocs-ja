##
## This is part of Japanese translation version for Hugo Documantation.
##

SUBDIRS = _default partials shortcodes

copyfiles = \
	404.html      \
	index.headers \
	index.html    \
	index.redir   \
	index.rss.xml \
	robots.txt

include $(top_srcdir)/build-aux/common.mk
include $(top_srcdir)/build-aux/copy.mk

copydirs = \
	maintenance   \
	news          \
	partials      \
	shortcodes    \
	showcase      \
	template-func

.PHONY: _copydirs
all: _copydirs
_copydirs:
	@for d in $(copydirs); do \
	  if test ! -d $$d; then \
	    cp -pR $(abs_origdir)/$$d .; \
	  fi \
	done
