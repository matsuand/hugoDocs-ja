##
## This is part of Japanese translation version for Hugo Documantation.
##

bases = \
	PostCSS.md     \
	TailwindCSS.md \
	_index.md

include $(top_srcdir)/build-aux/common.mk
include $(top_srcdir)/build-aux/content.mk

# Workaround to avoid handling "@import" as CTIE keyword...
all: Sass.md
./Sass.md: $(from1_dir)/Sass.md $(from2_dir)/Sass.md.ch
	@sed -e "s/^@import/__IMPORT__/g" $(from1_dir)/Sass.md > Sass.md.tmp
	@echo Processing Sass.md \(workaround\)...
	@$(top_builddir)/$(CTIE) -m $@ Sass.md.tmp $(from2_dir)/Sass.md.ch >/dev/null
	@sed -i -e "s/__IMPORT__/@import/g" $@
#	@rm -f Sass.md.tmp
