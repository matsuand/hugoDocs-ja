##
## This is part of Japanese translation version for Hugo Documantation.
##

SUBDIRS = docs

thisdate = `date +'%Y/%m/%d'`
commitdate = `(cd @abs_origdir@ && git log -1 --pretty=format:"%ad" --date=short) | sed "s|\-|/|g"`
commithash = `(cd @abs_origdir@ && git log -1 --pretty=format:"%h") | sed "s|\-|/|g"`

bases = \
	boxes-section-summaries.html \
	hero.html                    \
	maintenance-pages-table.html \
	page-edit.html               \
	pagelayout.html              \
	related.html                 \
	right-sidebar.html           \
	site-footer.html             \
	site-scripts.html            \
	site-search.html             \
	social-follow.html

include $(top_srcdir)/build-aux/common.mk
include $(top_srcdir)/build-aux/content.mk

copyfiles = \
	boxes-small-news.html                          \
	entry-summary.html                             \
	gtag.html                                      \
	head-additions.html                            \
	icon-link.html                                 \
	math.html                                      \
	nav-links-docs-mobile.html                     \
	nav-links-docs.html                            \
	nav-links-global-mobile.html                   \
	nav-links.html                                 \
	nav-mobile.html                                \
	nav-top.html                                   \
	page-header.html                               \
	previous-next-links-in-section-with-title.html \
	previous-next-links-in-section.html            \
	previous-next-links.html                       \
	site-manifest.html                             \
	summary.html                                   \
	tags.html

include $(top_srcdir)/build-aux/copy.mk

copydirs = \
	components         \
	home-page-sections \
	hooks              \
	opengraph          \
	svg

.PHONY: _copydirs
all: _copydirs
	@for d in $(copydirs); do \
	  if test ! -d $$d; then \
	    cp -pR $(abs_origdir)/$$d .; \
	  fi \
	done

.PHONY: _touch
all: _touch site-nav.html
site-nav.html: $(abs_origdir)/site-nav.html $(srcdir)/site-nav.html.ch
	@echo Processing site-nav.html...
	@$(top_builddir)/$(CTIE) -m $@ $(abs_origdir)/site-nav.html $(srcdir)/site-nav.html.ch >/dev/null
	@sed -i -e "s@__THISDATE__@$(thisdate)@" \
	        -e "s@__COMMITDATE__@$(commitdate)@" \
	        -e "s@__COMMITHASH__@$(commithash)@g" $@
	@echo "commitdate: $(commitdate)" > ../../commit.txt
	@echo "commithash: $(commithash)" >> ../../commit.txt

_touch:
	@touch $(srcdir)/site-nav.html.ch
