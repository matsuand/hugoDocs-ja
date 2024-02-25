##
## This is part of Japanese translation version for Hugo Documantation.
##

bases = \
	_index.md                 \
	babel.md                  \
	bundling.md               \
	fingerprint.md            \
	introduction.md           \
	js.md                     \
	minification.md           \
	postcss.md                \
	postprocess.md            \
	resource-from-string.md   \
	resource-from-template.md

include $(top_srcdir)/build-aux/common.mk
include $(top_srcdir)/build-aux/content.mk

# Workaround to avoid handling "@import" as CTIE keyword...
all: transpile-sass-to-css.md
./transpile-sass-to-css.md: $(from1_dir)/transpile-sass-to-css.md $(from2_dir)/transpile-sass-to-css.md.ch
	@sed -e "s/^@import/__IMPORT__/g" $(from1_dir)/transpile-sass-to-css.md > transpile-sass-to-css.md.tmp
	@echo Processing transpile-sass-to-css.md...
	@$(top_builddir)/$(CTIE) -m $@ transpile-sass-to-css.md.tmp $(from2_dir)/transpile-sass-to-css.md.ch >/dev/null
	@sed -i -e "s/__IMPORT__/@import/g" $@
#	@rm -f transpile-sass-to-css.md.tmp
