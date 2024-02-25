##
## This is part of Japanese translation version for Hugo Documantation.
##

SUBDIRS = _common

bases = \
	Babel.md             \
	ByType.md            \
	Concat.md            \
	Copy.md              \
	ExecuteAsTemplate.md \
	Fingerprint.md       \
	FromString.md        \
	Get.md               \
	GetMatch.md          \
	GetRemote.md         \
	Match.md             \
	Minify.md            \
	PostCSS.md           \
	PostProcess.md       \
	_index.md

include $(top_srcdir)/build-aux/common.mk
include $(top_srcdir)/build-aux/content.mk

# Workaround to avoid handling "@import" as CTIE keyword...
all: ToCSS.md
./ToCSS.md: $(from1_dir)/ToCSS.md $(from2_dir)/ToCSS.md.ch
	@sed -e "s/^@import/__IMPORT__/g" $(from1_dir)/ToCSS.md > ToCSS.md.tmp
	@echo Processing ToCSS.md \(workaround\)...
	@$(top_builddir)/$(CTIE) -m $@ ToCSS.md.tmp $(from2_dir)/ToCSS.md.ch >/dev/null
	@sed -i -e "s/__IMPORT__/@import/g" $@
#	@rm -f ToCSS.md.tmp
