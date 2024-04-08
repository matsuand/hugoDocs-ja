##
## This is part of Japanese translation version for Hugo Documantation.
##

absORIGDIR = @absORIGDIR@

SUBDIRS = _vendor config content i18n layouts

bases = \
	hugo.toml

include $(top_srcdir)/build-aux/common.mk
include $(top_srcdir)/build-aux/main.mk

copydirs = \
	archetypes \
	assets     \
	data       \
	src        \
	static

copyfiles = \
	.cspell.json        \
	.editorconfig       \
	.markdownlint.yaml  \
	.markdownlintignore \
	.textlintignore     \
	LICENSE.md          \
	README.md           \
	go.mod              \
	go.sum              \
	hugo.work           \
	hugo_stats.json     \
	hugoreleaser.toml   \
	netlify.toml        \
	pull-theme.sh

.PHONY: all _copydirs _copyfiles
all: _copydirs _copyfiles

_copydirs:
	@for d in $(copydirs); do \
	  if test ! -d $$d; then \
	    cp -pR $(absORIGDIR)/$$d .; \
	  fi \
	done

_copyfiles:
	@for f in $(copyfiles); do \
	  if test ! -e $$f; then \
	    cp -p $(absORIGDIR)/$$f .; \
	  fi \
	done
