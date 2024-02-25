##
## This is part of Japanese translation version for Hugo Documantation.
##

include $(top_srcdir)/build-aux/common.mk

.PHONY: _copydirs
all: app.js
app.js: $(abs_origdir)/app.js
	sed -e "s/Search the docs/ドキュメント検索/" $^ >$@
