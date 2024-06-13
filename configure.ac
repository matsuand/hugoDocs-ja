#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.71])
AC_INIT([hugoDocs-ja], [0.0.0], [30614168+matsuand@users.noreply.github.com])
AC_CONFIG_SRCDIR([ctie/ctie-k.c])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE([foreign -Wno-portability])
AM_MAINTAINER_MODE

m4_include([m4/progs.m4])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([malloc.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([strerror])

AC_CONFIG_FILES([
	Makefile
        ctie/Makefile
	src/Makefile
	src/_vendor/Makefile
	src/_vendor/github.com/Makefile
	src/_vendor/github.com/gohugoio/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/assets/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/assets/output/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/assets/output/js/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/layouts/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/layouts/_default/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/layouts/_default/_markup/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/layouts/partials/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/layouts/partials/docs/Makefile
	src/_vendor/github.com/gohugoio/gohugoioTheme/layouts/shortcodes/Makefile
	src/config/Makefile
	src/config/_default/Makefile
	src/config/_default/menus/Makefile
	src/config/development/Makefile
	src/config/production/Makefile
	src/content/Makefile
	src/content/ja/Makefile
	src/content/ja/about/Makefile
	src/content/ja/commands/Makefile
	src/content/ja/content-management/Makefile
	src/content/ja/content-management/_common/Makefile
	src/content/ja/content-management/image-processing/Makefile
	src/content/ja/content-management/organization/Makefile
	src/content/ja/contribute/Makefile
	src/content/ja/functions/Makefile
	src/content/ja/functions/_common/Makefile
	src/content/ja/functions/cast/Makefile
	src/content/ja/functions/collections/Makefile
	src/content/ja/functions/compare/Makefile
	src/content/ja/functions/crypto/Makefile
	src/content/ja/functions/data/Makefile
	src/content/ja/functions/debug/Makefile
	src/content/ja/functions/diagrams/Makefile
	src/content/ja/functions/encoding/Makefile
	src/content/ja/functions/fmt/Makefile
	src/content/ja/functions/fmt/_common/Makefile
	src/content/ja/functions/global/Makefile
	src/content/ja/functions/go-template/Makefile
	src/content/ja/functions/go-template/_common/Makefile
	src/content/ja/functions/hugo/Makefile
	src/content/ja/functions/images/Makefile
	src/content/ja/functions/images/_common/Makefile
	src/content/ja/functions/inflect/Makefile
	src/content/ja/functions/js/Makefile
	src/content/ja/functions/lang/Makefile
	src/content/ja/functions/math/Makefile
	src/content/ja/functions/openapi3/Makefile
	src/content/ja/functions/os/Makefile
	src/content/ja/functions/partials/Makefile
	src/content/ja/functions/path/Makefile
	src/content/ja/functions/reflect/Makefile
	src/content/ja/functions/resources/Makefile
	src/content/ja/functions/resources/_common/Makefile
	src/content/ja/functions/safe/Makefile
	src/content/ja/functions/strings/Makefile
	src/content/ja/functions/strings/Diff/Makefile
	src/content/ja/functions/templates/Makefile
	src/content/ja/functions/time/Makefile
	src/content/ja/functions/time/_common/Makefile
	src/content/ja/functions/transform/Makefile
	src/content/ja/functions/urls/Makefile
	src/content/ja/functions/urls/_common/Makefile
	src/content/ja/getting-started/Makefile
	src/content/ja/getting-started/external-learning-resources/Makefile
	src/content/ja/hosting-and-deployment/Makefile
	src/content/ja/hosting-and-deployment/hosting-on-github/Makefile
	src/content/ja/hosting-and-deployment/hosting-on-netlify/Makefile
	src/content/ja/hugo-modules/Makefile
	src/content/ja/hugo-pipes/Makefile
	src/content/ja/installation/Makefile
	src/content/ja/installation/_common/Makefile
	src/content/ja/maintenance/Makefile
	src/content/ja/methods/Makefile
	src/content/ja/methods/_common/Makefile
	src/content/ja/methods/duration/Makefile
	src/content/ja/methods/menu/Makefile
	src/content/ja/methods/menu-entry/Makefile
	src/content/ja/methods/menu-entry/_common/Makefile
	src/content/ja/methods/page/Makefile
	src/content/ja/methods/page/_common/Makefile
	src/content/ja/methods/pager/Makefile
	src/content/ja/methods/pages/Makefile
	src/content/ja/methods/pages/_common/Makefile
	src/content/ja/methods/resource/Makefile
	src/content/ja/methods/resource/_common/Makefile
	src/content/ja/methods/shortcode/Makefile
	src/content/ja/methods/site/Makefile
	src/content/ja/methods/taxonomy/Makefile
	src/content/ja/methods/taxonomy/_common/Makefile
	src/content/ja/methods/time/Makefile
	src/content/ja/myshowcase/Makefile
	src/content/ja/news/Makefile
	src/content/ja/quick-reference/Makefile
	src/content/ja/render-hooks/Makefile
	src/content/ja/render-hooks/_common/Makefile
	src/content/ja/showcase/Makefile
	src/content/ja/showcase/1password-support/Makefile
	src/content/ja/showcase/alora-labs/Makefile
	src/content/ja/showcase/ampio-help/Makefile
	src/content/ja/showcase/bypasscensorship/Makefile
	src/content/ja/showcase/digitalgov/Makefile
	src/content/ja/showcase/fireship/Makefile
	src/content/ja/showcase/forestry/Makefile
	src/content/ja/showcase/godot-tutorials/Makefile
	src/content/ja/showcase/hapticmedia/Makefile
	src/content/ja/showcase/hartwell-insurance/Makefile
	src/content/ja/showcase/keycdn/Makefile
	src/content/ja/showcase/letsencrypt/Makefile
	src/content/ja/showcase/linode/Makefile
	src/content/ja/showcase/overmindstudios/Makefile
	src/content/ja/showcase/pharmaseal/Makefile
	src/content/ja/showcase/quiply-employee-communications-app/Makefile
	src/content/ja/showcase/template/Makefile
	src/content/ja/showcase/tomango/Makefile
	src/content/ja/templates/Makefile
	src/content/ja/templates/lists/Makefile
	src/content/ja/tools/Makefile
	src/content/ja/troubleshooting/Makefile
	src/i18n/Makefile
])
AC_OUTPUT
