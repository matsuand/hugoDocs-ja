CTIE=ctie/ctie$EXEEXT
AC_SUBST(CTIE)

ORIGDIR=../hugoDocs
AC_ARG_WITH(origdir,
[  --with-origdir=DIR      Specify ORIG source directory [[DIR=../hugoDocs]]],
[
  if test -d "${with_origdir}" ; then
    ORIGDIR=${with_origdir}
  fi
]
)
AC_MSG_CHECKING([for the original files])
if test ! -f "${ORIGDIR}/content/en/documentation.md"; then
  AC_MSG_RESULT([no])
  AC_MSG_ERROR([The original files not found in ${ORIGDIR}])
else
  AC_MSG_RESULT([ok])
fi
AC_SUBST(ORIGDIR)
absORIGDIR=`(cd $ORIGDIR && pwd)`
AC_SUBST(absORIGDIR)

abs_origdir=`(cd $ORIGDIR && pwd)`
AC_SUBST(abs_origdir)

HOSTURL=https://gohugo.io/
AC_ARG_WITH(hosturl,
[  --with-hosturl=URL      Specify host URL [[URL=https://gohugo.io/]]],
[
  if test "${with_hosturl}" ; then
    HOSTURL=${with_hosturl}
  fi
]
)
AC_SUBST(HOSTURL)
