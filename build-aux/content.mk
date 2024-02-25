##
## This is part of Japanese translation version for Hugo Documantation.
##

changes = $(bases:=.ch) # change files
transes = $(bases)      # translated files
EXTRA_DIST = $(changes)

.PHONY: all
all: $(transes)

submakename ?= Makefile.sub

-include $(submakename)
$(submakename): $(top_srcdir)/bin/makesub.sh $(srcdir)/Makefile.am $(top_builddir)/config.log
	@$(top_srcdir)/bin/makesub.sh $(submakename) . $(transes)

@MAINT@.PHONY: chbuild
@MAINT@chbuild: $(addprefix $(from2_dir)/, $(changes))
@MAINT@$(addprefix $(from2_dir)/, $(changes)):
@MAINT@	@if test ! -f $@; then \
@MAINT@	  $(top_srcdir)/bin/buildch.perl `echo $@ | \
@MAINT@	    sed -e "s|^$(from2_dir)|$(from1_dir)|" \
@MAINT@	    -e "s|\.ch$$||"` $@; \
@MAINT@	fi
