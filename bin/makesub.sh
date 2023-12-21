#!/bin/sh

# $1	Makefile name
# $2	directory where the merge files will be created in
# $3	list for merge files

makename=$1
dirname=$2
list=${@:3:($#-1)}

rm -f $makename
echo "# $makename">$makename

for f in $list; do
    echo "$dirname/$f: \$(from1_dir)/$f \$(from2_dir)/$f.ch">>$makename
    echo "	@echo Processing $f...">>$makename
    echo "	@\$(top_builddir)/\$(CTIE) -m \$@ \$(from1_dir)/$f \$(from2_dir)/$f.ch >/dev/null">>$makename
done
