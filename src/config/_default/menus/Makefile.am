##
## This is part of Japanese translation version for Hugo Documantation.
##

copyfiles = \
	menus.en.toml

include $(top_srcdir)/build-aux/common.mk
include $(top_srcdir)/build-aux/copy.mk

all: menus.ja.toml
menus.ja.toml: $(from1_dir)/menus.en.toml $(from2_dir)/menus.ja.toml.ch
	@echo Processing _index.md...
	@$(top_builddir)/$(CTIE) -m $@ $(from1_dir)/menus.en.toml $(from2_dir)/menus.ja.toml.ch >/dev/null
