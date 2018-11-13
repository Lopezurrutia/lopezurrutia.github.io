#!/bin/sh
# replace $1 with $2 in $*

for file in $*  # for all files given as parameters
do
cp ${file} ${file}.backup

sed \
-e "s/Lopez-Urrutia A/\\\textbf{L\\\'{o}pez-Urrutia \\\'{A}}/g" \
-e "s/Valdes L/Vald\\\'{e}s L/g" \
-e "s/Acuna JL/Acu\\\~{n}a JL/g" \
-e "s/Moran XAG/Mor\\\'{a}n XAG/g" \
-e "s/Anadon R/Anad\\\'{o}n R/g" \
${file}>${file}.new 
/bin/mv ${file}.new ${file}
done
