##
## This is part of Japanese translation version for Docker's Documantation.
##
thisdir     = ${shell echo $(subdir) | sed -e "s|^src/||" -e "s|^src|\.|"}
abs_origdir = @abs_origdir@/$(thisdir)
srcdir      = @srcdir@
abs_thisdir = @abs_srcdir@

from1_dir = ${shell echo $(abs_origdir) | sed -e "s|content/ja|content/en|"}
from2_dir = $(srcdir)

.PHONY: all ctie
all: ctie
ctie:
	@if test ! -x "$(top_builddir)/$@/$@"; then \
	  $(MAKE) -C $(top_builddir)/$@ $@ >/dev/null; \
	fi
